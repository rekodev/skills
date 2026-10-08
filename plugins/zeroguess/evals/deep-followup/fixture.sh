#!/usr/bin/env bash
set -euo pipefail
mkdir -p src
cat > package.json <<'EOF'
{
  "name": "todo-cli",
  "type": "module",
  "bin": { "todo": "src/cli.js" },
  "scripts": { "test": "vitest run" },
  "devDependencies": { "vitest": "3.2.4" }
}
EOF
cat > src/todos.js <<'EOF'
import { readFileSync, writeFileSync, existsSync } from 'node:fs';

const STORE = 'todos.json';

export function loadTodos() {
  return existsSync(STORE) ? JSON.parse(readFileSync(STORE, 'utf8')) : [];
}

export function saveTodos(todos) {
  writeFileSync(STORE, JSON.stringify(todos, null, 2));
}

export function addTodo(title) {
  const todos = loadTodos();
  todos.push({ id: todos.length + 1, title, done: false, createdAt: new Date().toISOString() });
  saveTodos(todos);
}
EOF
cat > src/cli.js <<'EOF'
#!/usr/bin/env node
import { addTodo, loadTodos } from './todos.js';

const [command, ...rest] = process.argv.slice(2);

if (command === 'add') addTodo(rest.join(' '));
if (command === 'list') for (const todo of loadTodos()) console.log(`${todo.done ? 'x' : ' '} ${todo.id}. ${todo.title}`);
EOF
