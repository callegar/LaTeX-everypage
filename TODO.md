# Ideas to improve `everypage`

## Option to silence warnings

Consider introducing an option to silence the package complaints. Can be done
with

```
\newif\if@ep@quiet
\DeclareOption{@quiet}{\@ep@quiettrue}
\ProcessOptions*

\def\ep@warn#1{%
  \if@ep@quiet\relax\else
    \PackageWarningNoLine{everypage}{#1}%
  \fi}
```

and then using `\ep@warn{...}` in place of
`\PackageWarningNoLine{everypage}{...}`
