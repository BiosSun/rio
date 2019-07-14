Rio
====

Rio 提供一个简洁的文字排版样式库。

主页：http://biossun.github.io/rio


Install
-------

Yarn:

```shell
$ yarn add rio-typesetting
```

NPM:

```shell
$ npm install rio-typesetting --save
```

Bower:

```shell
$ bower install rio --save
```

<small>Note：因为 rio 这个名称已被注册，因此在使用 npm 或 yarn 安装时请注意包名为 rio-typesetting，但只有这里有所不同，在其它地方，项目名称仍为 rio。</small>


如果使用 CSS 文件，请按照如下方式在您的页面中引入并使用：

```html
<link href="rio.css" rel="stylesheet">
<!-- or <link href="rio.min.css" rel="stylesheet"> -->
<div class="rio">
    Your article content.
</div>
```

如果使用 SASS 预编译语言，则请按照如下方式在您的 SCSS 文件中引入并使用：

```scss
// custom options
$rio-class: rio;
$rio-font-size-base: 12px;
$rio-line-height: 1.75;

// other options ...

@import "rio";
```

```html
<div class="rio">
    Your article content.
</div>
```

配置变量
-------

### $rio-class

为 Rio 指定一个 class 名称；  
默认值：`rio`

### $rio-font-size-base

文字大小；  
默认值：`$font-size-base` or `14px`

### $rio-line-height

文字行高；  
默认值：`1.75`

### $rio-text-color

文本颜色；  
默认值：`$text-color` or `#333`

### $rio-text-color-quiet

次要文本颜色；  
默认值：`$text-color-quiet` or `#999`

### $rio-text-color-loud

强调文本颜色；  
默认值：`$text-color-loud` or `#222`

### $rio-link-color

链接颜色；  
默认值：`$link-color` or `#428bca`

### $rio-link-hover-color

链接在鼠标悬停时的颜色；  
默认值：`$link-hover-color` or `#2a6496`

### $rio-link-focus-color

链接在获取到焦点时的颜色；  
默认值：`$link-hover-color` or `$rio-link-hover-color`

### $rio-link-active-color

链接在触发时的颜色；  
默认值：`$link-active-color` or `$rio-link-hover-color`

### $rio-link-visited-color

已访问的链接的颜色；  
默认值：`$link-visited-color` or `$rio-link-color`

### $rio-block-el-border-color

具有边框样式的块级元素的边框颜色；  
默认值：`#f0f0f0`

### $rio-block-el-bg-color

具有背景样式的块级元素的背景颜色；  
默认值：`#fafafa`

### $rio-block-el-margin-top

块级元素的上外边距；  
默认值：`1.27em`

### $rio-block-el-margin-bottom

块级元素的下外边距；  
默认值：`1.27em`

### $rio-title-weight

标题文本的加粗组别；  
默认值：`600`

### $rio-title-line-height

标题文本行高；  
默认值：`1.5em`

### $rio-title-margin-top

标题元素的上外边距；  
默认值：`1.2em`

### $rio-title-margin-bottom

标题元素的下外边距；  
默认值：`0.8em`

### $rio-h1-size

一级标题文字大小；  
默认值：`2.2em`

### $rio-h2-size

二级标题文字大小；  
默认值：`1.8em`

### $rio-h3-size

三级标题文字大小；  
默认值：`1.4em`

### $rio-h4-size

四级标题文字大小；  
默认值：`1.2em`

### $rio-h5-size

五级标题文字大小；  
默认值：`1.0em`

### $rio-h6-size

六级标题文字大小；  
默认值：`0.9em`

### $rio-list-margin-left

列表元素的左外边距；  
默认值：`2em`

### $rio-mark-bg

标记文本的背景色；  
默认值：`#fffda0`

### $rio-mark-padding

标记文本的内边距；  
默认值：`1px 0`

### $rio-code-size

代码文字大小；  
默认值：`0.9em`

### $rio-code-family

代码文字字体；  
默认值：`Menlo, Monaco, Consolas, "Courier New", monospace`

### $rio-code-bg

代码元素的背景色；  
默认值：`$f7f7f7`

### $rio-code-block-line-height

代码块元素的文本行高；  
默认值：`1.48`

### $rio-hr-width

分割线宽度；  
默认值：`1px`

### $rio-hr-style

分割线样式；  
默认值：`solid`

### $rio-hr-color

分割线颜色；  
默认值：`$rio-block-el-border-color`
