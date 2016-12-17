Rio
====

Rio 提供一个简洁的文字排版样式库。

主页：http://biossun.github.io/rio


Install
-------

Bower:

```shell
$ bower install rio --save
```

NPM:

```shell
$ npm install rio-typesetting --save
```

<small>Note：因为 rio 这个名称已被注册，因此在使用 npm 安装时请注意包名为 rio-typesetting，但只有这里有所不同，在其它地方，项目名称仍为 rio。</small>


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
