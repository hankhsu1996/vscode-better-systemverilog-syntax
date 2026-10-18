// Runs the test suite once. `npm run test-watch` runs this file under
// `node --watch-path`, which runs it again whenever a watched file changes.
import { spawnSync } from "node:child_process";

const { status } = spawnSync("npm", ["run", "test"], { stdio: "inherit" });
process.exitCode = status ?? 1;
