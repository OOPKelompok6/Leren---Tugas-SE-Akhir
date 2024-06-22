function insertSectionBreak(editor) {
    editor.insertContent(`
        <div>
            <hr class="border-2 border-dark">
        </div>
    `)
}

tinymce.init({

    setup: function (editor) {
        editor.ui.registry.addButton('SectionBreak', {
            tooltip: 'Add Section Break',
            icon: 'page-break',
            onAction: function () {
                insertSectionBreak(editor);
            }
        });

        
    },

    selector: '#ctl00_ContentPlaceHolder1_MainTextEditor',
    license_key: 'gpl',
    menubar: false,
    branding: false,
    statusbar: false,

    plugins: 'autoresize media image lists advlist',
    external_plugins: {'mathjax': '/tinymce/plugins/mathjax/plugin.js'},

    width: (screen.width * 66.6666667) / 100,
    autoresize_overflow_padding: 50,
    theme_advanced_resizing: true,
    theme_advanced_resizing_use_cookie: false,
    min_height: screen.height * 0.666667,
    media_live_embeds: true,
    toolbar_sticky: true,
    toolbar: 'undo redo | bullist numlist | bold italic underline | alignleft aligncenter alignright | styles | mathjax | SectionBreak | media image',
    skin: 'Borderless',

    mathjax: {
        lib: 'https://cdn.jsdelivr.net/npm/mathjax@3/es5/tex-mml-chtml.js',
        configUrl: '/tinymce/plugins/mathjax/config.js'
        },

    style_formats: [
        { title: 'SubTitle', block: 'h3' },
        { title: 'Paragraph', block: 'p'}
    ],

    image_class_list: [
        { title: 'Responsive', value: 'img-fluid' }
    ],

    content_style:
        "@import url('https://fonts.googleapis.com/css2?family=Alatsi&family=Outfit:wght@200&display=swap'); body {font-family: Alatsi};",

    //Medias Template
    iframe_template_callback: (data) =>
        `<iframe title="${data.title}" width="${data.width}"  height="${data.height}" src="${data.source}" allowfullscreen="allowfullscreen"></iframe>`
});