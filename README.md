# Dead Simple light syntax theme

### A stripped-down, configurable syntax theme for Atom

I like to keep my syntax themes pretty basic to limit distraction. This one is about as basic as you'd want, and I think that makes it really comfortable to work in.

You can choose from two color schemes and three background colors. Simply go to the theme settings and select your fav. The theme will be immediately updated; no need to reload Atom.

I think Dead Simple looks best with Atom's One Light UI theme and Source Code Pro.

![screenshot-js](https://github.com/blaqbern/dead-simple-light-syntax/blob/master/screenshot-js.gif?raw=true)

### Some other notes

I've modified the default syntax theme structure slightly--pulling out the editor styles into their own file, and separating language-specific styles into their own files as well and stashing them in the languages directory:

```
...
└─ styles
   ├─ languages
   │  ├─ coffee.less
   │  ├─ css.less
   │  ├─ gfm.less
   │  ├─ html.less
   │  ├─ js.less
   │  ├─ json.less
   │  ├─ jsx.less
   │  └─ ruby.less
   ├─ colors.less
   ├─ dead-simple.less
   ├─ editor.less
   └─ syntax-variables.less
...
```

The languages shown are the only ones I can vouch for at the moment. Styling for css includes less, but Sass could be hit or miss. The jsx style rules are based on orktes' [react](https://atom.io/packages/react) package. They're not quite where I want them currently, so I anticipate some improvements there in future versions. I also intend to expand the theme to include more languages eventually.

Thanks for stopping by!
