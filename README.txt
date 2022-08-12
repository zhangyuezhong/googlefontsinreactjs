Use fonts from https://fontsource.org/fonts


If a font is not available in fontsource, you can always host google fonts (for user doesnt have internet access)

Self-host Google fonts in your react project.

Step 1 go to https://fonts.google.com/

Select the font your want 

if want create import tag for you. eg. 
<style>
@import url('https://fonts.googleapis.com/css2?family=Liu+Jian+Mao+Cao&display=swap');
</style>


Step 2 open googlefonts.ps1
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



