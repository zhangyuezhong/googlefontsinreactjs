import { useState } from "react";
import reactLogo from "./assets/react.svg";
import "./App.css";
import "@fontsource/roboto";
import "@fontsource/bubbler-one";
import Button from "@mui/material/Button";
import { StyledEngineProvider } from "@mui/material/styles";
import CssBaseline from "@mui/material/CssBaseline";
import {
  ThemeProvider,
  createTheme,
  responsiveFontSizes,
} from "@mui/material/styles";

function App() {
  const [count, setCount] = useState(0);

  let theme = createTheme({
    typography: {
      fontFamily: [
        "'Liu Jian Mao Cao'",
        '"Roboto"',
        '"Bubbler One"',
        "sans-serif",
      ].join(","),
    },
  });
  theme = responsiveFontSizes(theme);

  return (
    <StyledEngineProvider injectFirst>
      <ThemeProvider theme={theme}>
        <CssBaseline />
        <div className="App">
          <div>
            <a href="https://vitejs.dev" target="_blank">
              <img src="/vite.svg" className="logo" alt="Vite logo" />
            </a>
            <a href="https://reactjs.org" target="_blank">
              <img src={reactLogo} className="logo react" alt="React logo" />
            </a>
          </div>
          <h1>Vite + React</h1>
          <div className="card">
            <Button
              variant="contained"
              onClick={() => setCount((count) => count + 1)}
            >
              {" "}
              count is {count}
            </Button>
            <p>
              你感觉这个演示如何 Edit <code>src/App.jsx</code> and save to test
              HMR
            </p>
          </div>
          <p className="read-the-docs">
            Click on the Vite and React logos to learn more
          </p>
        </div>
      </ThemeProvider>
    </StyledEngineProvider>
  );
}

export default App;
