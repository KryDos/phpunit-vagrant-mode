; phpunit-vagrant-mode -- minor mode to execute PHPUnit tests via vagrant-ssh

(defun puvm-run-all-tests ()
  "Runs all tests in the tests directory"
  (interactive)
  (compile (concat
            "cd "
            puvm-path-to-vagrant-directory
            " && "
            "vagrant ssh "
            "-c "
            "\""
            "cd "
            puvm-path-to-test-directory-in-vagrant
            " && "
            puvm-path-to-phpunit-executable
            " --color ."
            "\"")))

(defvar puvm-path-to-vagrant-directory "~/vagrant"
  "Path to the directory where your Vagrant file is.")

(defvar puvm-path-to-test-directory-in-vagrant nil
  "Path to to directory which is containing all the tests.
   The directory should be set according to Virtual Machine's filesystem")

(defvar puvm-path-to-phpunit-executable nil
  "Path to PHPUnit executable file.
   You can find this path using 'which phpunit' command in you vagrant shell")

(define-minor-mode phpunit-vagrant-mode
  :lighter "puvm "
  :keymap (let ((map (make-sparse-keymap)))
            (define-key map (kbd "C-x pa") 'puvm-run-all-tests)
            map))

(provide 'phpunit-vagrant-mode)
