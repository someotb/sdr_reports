# .latexmkrc
$out_dir = 'temp';
ensure_path($out_dir);
$pdf_mode = 5;  # 5 = xelatex
$postscript_mode = 0;
$dvi_mode = 0;
$aux_dir = $out_dir;
$out_dir = $out_dir;

END {
    my $source_pdf = "temp/$pdf_name.pdf";
    my $dest_pdf = "$pdf_name.pdf";
    
    if ($^O eq 'MSWin32') {
        if (-e $source_pdf) {
            system("copy", $source_pdf, $dest_pdf);
        }
    } else {
        if (-e $source_pdf) {
            system("cp", $source_pdf, $dest_pdf);
        }
    }
}