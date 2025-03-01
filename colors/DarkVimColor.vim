" ===============================================================
" OceanicNext
" Author: Mike Hartington
" ===============================================================

" {{{ Setup
  if exists('g:colors_name')
     highlight clear
     if exists('syntax_on')
       syntax reset
     endif
  endif
  let g:colors_name="DarkVimColor"
  let g:transparent_enabled = v:true
" }}}

function! s:hi(group, fg, bg, attr, attrsp)
  " fg, bg, attr, attrsp
  if !empty(a:fg)
    exec "hi " . a:group . " guifg=" .  a:fg[0]
    exec "hi " . a:group . " ctermfg=" . a:fg[1]
  endif
  if !empty(a:bg)
    exec "hi " . a:group . " guibg=" .  a:bg[0]
    exec "hi " . a:group . " ctermbg=" . a:bg[1]
  endif
  if a:attr != ""
    exec "hi " . a:group . " gui=" .   a:attr
    exec "hi " . a:group . " cterm=" . a:attr
  endif
  if !empty(a:attrsp)
    exec "hi " . a:group . " guisp=" . a:attrsp[0]
  endif
endfunction

" Colors {{{
  let s:base00 = ['#000000', '235']
  let s:base01 = ['#343d46', '237']
  let s:base02 = ['#4f5b66', '240']
  let s:base03 = ['#65737e', '243']
  let s:base04 = ['#a7adba', '145']
  let s:base05 = ['#c0c5ce', '251']
  let s:base06 = ['#cdd3de', '252']
  let s:base07 = ['#00ff00', '253']
  let s:red    = ['#ff0000', '203']
  let s:orange = ['#ffa500', '209']
  let s:yellow = ['#fffb50', '221']
  let s:green  = ['#00ff00', '114']
  let s:cyan   = ['#00ffff', '73']
  let s:blue   = ['#0000ff', '68']
  let s:purple = ['#a020f0', '176']
  let s:brown  = ['#fca100', '137']
  let s:lemon  = ['#fffb50', '80']
  let s:lghtgreen  = ['#60ff60', '81']
  let s:Camel  = ['#d1a757', '82']
  let s:white  = ['#ffffff', '15']
  let s:none   = ['NONE',    'NONE']
" }}}

" {{{ Italics
  let g:dark_vim_terminal_italic = get(g:, 'dark_vim_terminal_italic', 0)
  let s:italic = ""
  if g:dark_vim_terminal_italic == 1
    let s:italic = "italic"
  endif
"}}}
" {{{ Bold
  let g:dark_vim_terminal_bold = get(g:, 'dark_vim_terminal_bold', 0)
  let s:bold = ""
  if g:dark_vim_terminal_bold == 1
   let s:bold = "bold"
  endif
"}}}
" Highlight function{{{ 
function! s:hi(group, fg, bg, attr, attrsp)
  " fg, bg, attr, attrsp
  if !empty(a:fg)
    exec "hi " . a:group . " guifg=" .  a:fg[0]
    exec "hi " . a:group . " ctermfg=" . a:fg[1]
  endif
  if !empty(a:bg)
    exec "hi " . a:group . " guibg=" .  a:bg[0]
    exec "hi " . a:group . " ctermbg=" . a:bg[1]
  endif
  if a:attr != ""
    exec "hi " . a:group . " gui=" .   a:attr
    exec "hi " . a:group . " cterm=" . a:attr
  endif
  if !empty(a:attrsp)
    exec "hi " . a:group . " guisp=" . a:attrsp[0]
  endif
endfunction
" }}}
" {{{ call s::hi(group, fg, bg, gui, guisp)
  call s:hi('Bold',                               '',       '',       s:bold,      '')
  call s:hi('Debug',                              s:red,    '',       '',          '')
  call s:hi('Directory',                          s:cyan,   '',       '',          '')
  call s:hi('ErrorMsg',                           s:red,    s:base00, '',          '')
  call s:hi('Exception',                          s:red,    '',       '',          '')
  call s:hi('FoldColumn',                         s:blue,   s:base00, '',          '')
  call s:hi('Folded',                             s:base03, s:base01, s:italic,    '')
  call s:hi('IncSearch',                          s:base01, s:orange, 'NONE',      '')
  call s:hi('Italic',                             '',       '',       s:italic,    '')

  call s:hi('Macro',                              s:red,    '',       '',          '')
  call s:hi('MatchParen',                         s:base05, s:base03, '',          '')
  call s:hi('ModeMsg',                            s:green,  '',       '',          '')
  call s:hi('MoreMsg',                            s:green,  '',       '',          '')
  call s:hi('Question',                           s:blue,   '',       '',          '')
  call s:hi('Search',                             s:base03, s:yellow, '',          '')
  call s:hi('SpecialKey',                         s:base03, '',       '',          '')
  call s:hi('TooLong',                            s:red,    '',       '',          '')
  call s:hi('Underlined',                         s:red,    '',       '',          '')
  call s:hi('Visual',                             '',       s:base02, '',          '')
  call s:hi('VisualNOS',                          s:red,    '',       '',          '')
  call s:hi('WarningMsg',                         s:red,    '',       '',          '')
  call s:hi('WildMenu',                           s:base07, s:blue,   '',          '')
  call s:hi('Title',                              s:blue,   '',       '',          '')
  call s:hi('Conceal',                            s:blue,   s:base00, '',          '')
  call s:hi('Cursor',                             s:base00, s:base05, '',          '')
  call s:hi('NonText',                            s:base03, '',       '',          '')
  call s:hi('Normal',                             s:base07, s:base00, '',          '')
  call s:hi('EndOfBuffer',                        s:base05, s:base00, '',          '')
  call s:hi('LineNr',                             s:base03, s:base00, '',          '')
  call s:hi('SignColumn',                         s:base00, s:base00, '',          '')
  call s:hi('StatusLine',                         s:base01, s:base03, '',          '')
  call s:hi('StatusLineNC',                       s:base03, s:base01, '',          '')
  call s:hi('VertSplit',                          s:base00, s:base02, '',          '')
  call s:hi('ColorColumn',                        '',       s:base01, '',          '')
  call s:hi('CursorColumn',                       '',       s:base01, '',          '')
  call s:hi('CursorLine',                         '',       s:base01, 'None',      '')
  call s:hi('CursorLineNR',                       s:base00, s:base00, '',          '')
  call s:hi('CursorLineNr',                       s:base03, s:base01, '',          '')
  call s:hi('PMenu',                              s:base04, s:base01, '',          '')
  call s:hi('PMenuSel',                           s:base07, s:blue,   '',          '')
  call s:hi('PmenuSbar',                          '',       s:base02, '',          '')
  call s:hi('PmenuThumb',                         '',       s:base07, '',          '')
  call s:hi('TabLine',                            s:base03, s:base01, '',          '')
  call s:hi('TabLineFill',                        s:base03, s:base01, '',          '')
  call s:hi('TabLineSel',                         s:green,  s:base01, '',          '')
  call s:hi('helpExample',                        s:yellow, '',       '',          '')
  call s:hi('helpCommand',                        s:yellow, '',       '',          '')

  " Standard syntax highlighting
  call s:hi('Boolean',                            s:orange, '',       '',          '')
  call s:hi('Character',                          s:red,    '',       '',          '')
  call s:hi('Comment',                            s:base03, '',       s:italic,    '')
  call s:hi('Conditional',                        s:purple, '',       '',          '')
  call s:hi('Constant',                           s:orange, '',       '',          '')
  call s:hi('Define',                             s:lemon, '',       '',          '')
  call s:hi('Delimiter',                          s:brown,  '',       '',          '')
  call s:hi('Float',                              s:orange, '',       '',          '')
  call s:hi('Function',                           s:cyan,   '',       '',          '')

  call s:hi('Identifier',                         s:cyan,   '',       '',          '')
  call s:hi('Include',                            s:Camel,   '',       '',          '')
  call s:hi('Keyword',                            s:lemon, '',       '',          '')

  call s:hi('Label',                              s:lemon, '',       '',          '')
  call s:hi('Number',                             s:orange, '',       '',          '')
  call s:hi('Operator',                           s:base05, '',       '',          '')
  call s:hi('PreProc',                            s:yellow, '',       '',          '')
  call s:hi('Repeat',                             s:yellow, '',       '',          '')
  call s:hi('Special',                            s:cyan,   '',       '',          '')
  call s:hi('SpecialChar',                        s:brown,  '',       '',          '')
  call s:hi('Statement',                          s:red,    '',       '',          '')
  call s:hi('StorageClass',                       s:lghtgreen, '',       '',          '')
  call s:hi('String',                             s:green,  '',       '',          '')
  call s:hi('Structure',                          s:lemon, '',       '',          '')
  call s:hi('Tag',                                s:yellow, '',       '',          '')
  call s:hi('Todo',                               s:yellow, s:base01, '',          '')
  call s:hi('Type',                               s:yellow, '',       '',          '')
  call s:hi('Typedef',                            s:yellow, '',       '',          '')

  " LSP
  call s:hi('LspDiagnosticsDefaultError',         '',       '',       '',          '')
  call s:hi('LspDiagnosticsSignError',            s:red,    '',       '',          '')
  call s:hi('LspDiagnosticsUnderlineError',       '',       '',       'undercurl', '')

  call s:hi('LspDiagnosticsDefaultWarning',       '',       '',       '',          '')
  call s:hi('LspDiagnosticsSignWarning',          s:yellow, '',       '',          '')
  call s:hi('LspDiagnosticsUnderlineWarning',     '',       '',       'undercurl', '')

  call s:hi('LspDiagnosticsDefaultInformation',   '',       '',       '',          '')
  call s:hi('LspDiagnosticsSignInformation',      s:Camel,   '',       '',          '')
  call s:hi('LspDiagnosticsUnderlineInformation', '',       '',       'undercurl', '')

  call s:hi('LspDiagnosticsDefaultHint',          '',       '',       '',          '')
  call s:hi('LspDiagnosticsSignHint',             s:cyan,   '',       '',          '')
  call s:hi('LspDiagnosticsUnderlineHint',        '',       '',       'undercurl', '')


  " TreeSitter stuff
  call s:hi('TSInclude',                          s:cyan,   '',       '',          '')
  call s:hi('TSPunctBracket',                     s:cyan,   '',       '',          '')
  call s:hi('TSPunctDelimiter',                   s:base07, '',       '',          '')
  call s:hi('TSParameter',                        s:base07, '',       '',          '')
  call s:hi('TSType',                             s:Camel,   '',       '',          '')
  call s:hi('TSFunction',                         s:cyan,   '',       '',          '')

  call s:hi('TSTagDelimiter',                     s:cyan,   '',       '',          '')
  call s:hi('TSProperty',                         s:yellow, '',       '',          '')
  call s:hi('TSMethod',                           s:Camel,   '',       '',          '')
  call s:hi('TSParameter',                        s:yellow, '',       '',          '')
  call s:hi('TSConstructor',                      s:base07, '',       '',          '')
  call s:hi('TSVariable',                         s:base07, '',       '',          '')
  call s:hi('TSOperator',                         s:base07, '',       '',          '')
  call s:hi('TSTag',                              s:base07, '',       '',          '')
  call s:hi('TSKeyword',                          s:purple, '',       '',          '')
  call s:hi('TSKeywordOperator',                  s:purple, '',       '',          '')
  call s:hi('TSVariableBuiltin',                  s:red,    '',       '',          '')
  call s:hi('TSLabel',                            s:cyan,   '',       '',          '')

  call s:hi('SpellBad',                           '',       '',       'undercurl', '')
  call s:hi('SpellLocal',                         '',       '',       'undercurl', '')
  call s:hi('SpellCap',                           '',       '',       'undercurl', '')
  call s:hi('SpellRare',                          '',       '',       'undercurl', '')

  call s:hi('csClass',                            s:yellow, '',       '',          '')
  call s:hi('csAttribute',                        s:yellow, '',       '',          '')
  call s:hi('csModifier',                         s:purple, '',       '',          '')
  call s:hi('csType',                             s:red,    '',       '',          '')
  call s:hi('csUnspecifiedStatement',             s:Camel,   '',       '',          '')
  call s:hi('csContextualStatement',              s:purple, '',       '',          '')
  call s:hi('csNewDecleration',                   s:red,    '',       '',          '')
  call s:hi('cOperator',                          s:cyan,   '',       '',          '')
  call s:hi('cPreCondit',                         s:purple, '',       '',          '')

  call s:hi('cssColor',                           s:cyan,   '',       '',          '')
  call s:hi('cssBraces',                          s:base05, '',       '',          '')
  call s:hi('cssClassName',                       s:purple, '',       '',          '')


  call s:hi('DiffAdd',                            s:green,  s:base01, s:bold,      '')
  call s:hi('DiffChange',                         s:base03, s:base01, '',          '')
  call s:hi('DiffDelete',                         s:red,    s:base01, '',          '')
  call s:hi('DiffText',                           s:Camel,   s:base01, '',          '')
  call s:hi('DiffAdded',                          s:base07, s:green,  s:bold,      '')
  call s:hi('DiffFile',                           s:red,    s:base00, '',          '')
  call s:hi('DiffNewFile',                        s:green,  s:base00, '',          '')
  call s:hi('DiffLine',                           s:Camel,   s:base00, '',          '')
  call s:hi('DiffRemoved',                        s:base07, s:red,    s:bold,      '')

  call s:hi('gitCommitOverflow',                  s:red,    '',       '',          '')
  call s:hi('gitCommitSummary',                   s:green,  '',       '',          '')

  call s:hi('htmlBold',                           s:yellow, '',       '',          '')
  call s:hi('htmlItalic',                         s:purple, '',       '',          '')
  call s:hi('htmlTag',                            s:cyan,   '',       '',          '')
  call s:hi('htmlEndTag',                         s:cyan,   '',       '',          '')
  call s:hi('htmlArg',                            s:yellow, '',       '',          '')
  call s:hi('htmlTagName',                        s:base07, '',       '',          '')

  call s:hi('javaScript',                         s:base05, '',       '',          '')
  call s:hi('javaScriptNumber',                   s:orange, '',       '',          '')
  call s:hi('javaScriptBraces',                   s:base05, '',       '',          '')

  call s:hi('jsonKeyword',                        s:green,  '',       '',          '')
  call s:hi('jsonQuote',                          s:green,  '',       '',          '')

  call s:hi('markdownCode',                       s:green,  '',       '',          '')
  call s:hi('markdownCodeBlock',                  s:green,  '',       '',          '')
  call s:hi('markdownHeadingDelimiter',           s:Camel,   '',       '',          '')
  call s:hi('markdownItalic',                     s:purple, '',       s:italic,    '')
  call s:hi('markdownBold',                       s:yellow, '',       s:bold,      '')
  call s:hi('markdownCodeDelimiter',              s:brown,  '',       s:italic,    '')
  call s:hi('markdownError',                      s:base05, s:base00, '',          '')

  call s:hi('typescriptParens',                   s:base05, s:none,   '',          '')

  call s:hi('NeomakeErrorSign',                   s:red,    s:base00, '',          '')
  call s:hi('NeomakeWarningSign',                 s:yellow, s:base00, '',          '')
  call s:hi('NeomakeInfoSign',                    s:white,  s:base00, '',          '')
  call s:hi('NeomakeError',                       s:red,    '',       'underline', s:red)
  call s:hi('NeomakeWarning',                     s:red,    '',       'underline', s:red)

  call s:hi('ALEErrorSign',                       s:red,    s:base00, s:bold,      '')
  call s:hi('ALEWarningSign',                     s:yellow, s:base00, s:bold,      '')
  call s:hi('ALEInfoSign',                        s:white,  s:base00, s:bold,      '')

  call s:hi('NERDTreeExecFile',                   s:base05, '',       '',          '')
  call s:hi('NERDTreeDirSlash',                   s:Camel,   '',       '',          '')
  call s:hi('NERDTreeOpenable',                   s:Camel,   '',       '',          '')
  call s:hi('NERDTreeFile',                       '',       s:none,   '',          '')
  call s:hi('NERDTreeFlags',                      s:Camel,   '',       '',          '')

  call s:hi('phpComparison',                      s:base05, '',       '',          '')
  call s:hi('phpParent',                          s:base05, '',       '',          '')
  call s:hi('phpMemberSelector',                  s:base05, '',       '',          '')

  call s:hi('pythonRepeat',                       s:purple, '',       '',          '')
  call s:hi('pythonOperator',                     s:purple, '',       '',          '')

  call s:hi('rubyConstant',                       s:yellow, '',       '',          '')
  call s:hi('rubySymbol',                         s:green,  '',       '',          '')
  call s:hi('rubyAttribute',                      s:Camel,   '',       '',          '')
  call s:hi('rubyInterpolation',                  s:green,  '',       '',          '')
  call s:hi('rubyInterpolationDelimiter',         s:brown,  '',       '',          '')
  call s:hi('rubyStringDelimiter',                s:green,  '',       '',          '')
  call s:hi('rubyRegexp',                         s:cyan,   '',       '',          '')

  call s:hi('sassidChar',                         s:red,    '',       '',          '')
  call s:hi('sassClassChar',                      s:orange, '',       '',          '')
  call s:hi('sassInclude',                        s:purple, '',       '',          '')
  call s:hi('sassMixing',                         s:purple, '',       '',          '')
  call s:hi('sassMixinName',                      s:Camel,   '',       '',          '')

  call s:hi('vimfilerLeaf',                       s:base05, '',       '',          '')
  call s:hi('vimfilerNormalFile',                 s:base05, s:base00, '',          '')
  call s:hi('vimfilerOpenedFile',                 s:Camel,   '',       '',          '')
  call s:hi('vimfilerClosedFile',                 s:Camel,   '',       '',          '')

  call s:hi('GitGutterAdd',                       s:green,  s:base00, s:bold,      '')
  call s:hi('GitGutterChange',                    s:Camel,   s:base00, s:bold,      '')
  call s:hi('GitGutterDelete',                    s:red,    s:base00, s:bold,      '')
  call s:hi('GitGutterChangeDelete',              s:purple, s:base00, s:bold,      '')

  call s:hi('SignifySignAdd',                     s:green,  s:base00, s:bold,      '')
  call s:hi('SignifySignChange',                  s:Camel,   s:base00, s:bold,      '')
  call s:hi('SignifySignDelete',                  s:red,    s:base00, s:bold,      '')
  call s:hi('SignifySignChangeDelete',            s:purple, s:base00, s:bold,      '')
  call s:hi('SignifySignDeleteFirstLine',         s:red,    s:base00, s:bold,      '')

  call s:hi('xmlTag',                             s:cyan,   '',       '',          '')
  call s:hi('xmlTagName',                         s:base05, '',       '',          '')
  call s:hi('xmlEndTag',                          s:cyan,   '',       '',          '')
  call s:hi('Defx_filename_directory',            s:Camel,   '',       '',          '')

  call s:hi('CocErrorSign',                       s:red,    '',       '',          '')
  call s:hi('CocWarningSign',                     s:yellow, '',       '',          '')
  call s:hi('CocInfoSign',                        s:Camel,   '',       '',          '')
  call s:hi('CocHintSign',                        s:cyan,   '',       '',          '')
  call s:hi('CocErrorFloat',                      s:red,    '',       '',          '')
  call s:hi('CocWarningFloat',                    s:yellow, '',       '',          '')
  call s:hi('CocInfoFloat',                       s:Camel,   '',       '',          '')
  call s:hi('CocHintFloat',                       s:cyan,   '',       '',          '')
  call s:hi('CocDiagnosticsError',                s:red,    '',       '',          '')
  call s:hi('CocDiagnosticsWarning',              s:yellow, '',       '',          '')
  call s:hi('CocDiagnosticsInfo',                 s:Camel,   '',       '',          '')
  call s:hi('CocDiagnosticsHint',                 s:cyan,   '',       '',          '')
  call s:hi('CocSelectedText',                    s:purple, '',       '',          '')
  
  call s:hi('TelescopeTitle,                      s:red, '',       '',          '')
  call s:hi('TelescopeBorder,                     s:red,  s:red,       '',          '')
  call s:hi('TelescopePromptBorder,               s:red,  s:red,       '',          '')
  call s:hi('TelescopeResultsBorder,              s:red,  s:red,       '',          '')
  call s:hi('TelescopePreviewBorder,              s:red,  s:red,       '',          '')
  call s:hi('TelescopeSelection,                  s:red, '',       '',          '')
  call s:hi('TelescopeResultsBorder,              s:red, s:red,      '',          '') 
  call s:hi('CocCodeLens',                        s:base04, '',       '',          '')
" }}}
" {{{ Terminal
    let g:terminal_color_0  = '#000000'   " Black
    let g:terminal_color_8  = '#343d46'   " Bright Black (Dark Grey)
    let g:terminal_color_1  = '#ff0000'   " Red
    let g:terminal_color_9  = '#ff0000'   " Bright Red
    let g:terminal_color_2  = '#00ff00'   " Green
    let g:terminal_color_10 = '#00ff00'   " Bright Green
    let g:terminal_color_3  = '#fffb50'   " Yellow
    let g:terminal_color_11 = '#fffb50'   " Bright Yellow
    let g:terminal_color_4  = '#0000ff'   " Blue
    let g:terminal_color_12 = '#0000ff'   " Bright Blue
    let g:terminal_color_5  = '#a020f0'   " Magenta (Purple)
    let g:terminal_color_13 = '#a020f0'   " Bright Magenta
    let g:terminal_color_6  = '#00ffff'   " Cyan
    let g:terminal_color_14 = '#00ffff'   " Bright Cyan
    let g:terminal_color_7  = '#c0c5ce'   " White
    let g:terminal_color_15 = '#cdd3de'   " Bright White
" }}}
