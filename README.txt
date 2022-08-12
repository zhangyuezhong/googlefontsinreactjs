Self-host Google Fonts in your next React project


First Use fonts from https://fontsource.org/fonts
E.g 

yarn add @fontsource/mononoki
import "@fontsource/mononoki"
body { font-family: "Mononoki", monospace; }



If a font is not available in fontsource, you can always host google fonts (for user doesnt have internet access)

Self-host Google fonts in your react project.

Step 1 go to https://fonts.google.com/

Select the font your want, scroll down to "Style', 
Click the style to add to your select.   (continue select other fonts)

it wil generate a tag for you. eg. 
<style>
@import url('https://fonts.googleapis.com/css2?family=Liu+Jian+Mao+Cao&display=swap');
</style>

OR (two fonts)
<style>
@import url('https://fonts.googleapis.com/css2?family=Liu+Jian+Mao+Cao&family=Roboto:wght@100&display=swap');
</style>


Step 2 open googlefonts.ps1  in this project
edit the url = 'https://fonts.googleapis.com/css2?family=Liu+Jian+Mao+Cao&display=swap'
execute googlefonts.ps1 (it will downloa all the fonts into public/fonts folder)

Step 3  edit index.html
add  <link href="/fonts/css2.css" rel="stylesheet"/>    to index.html

Step 4 use google fonts in your css. 

    font-family: 'Liu Jian Mao Cao', cursive;


if you are using MUI 

let theme = createTheme({stylesheet
    typography: {
      fontFamily: [
        "'Liu Jian Mao Cao'",
        '"Roboto"',
        '"Bubbler One"',
        "sans-serif",
      ].join(","),
    },
  });



