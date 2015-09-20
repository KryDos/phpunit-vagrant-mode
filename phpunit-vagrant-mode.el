; phpunit-vagrant-mode -- minor mode to execute PHPUnit tests via vagrant-ssh

(defun run-all-tests ()
  "Runs all tests in the tests directory"
  (interactive)
  (compile (concat
            "cd "
            path-to-vagrant-directory
            " && "
            "vagrant ssh "
            "-c "
            "\"cd /projects/cayugasoft/persona && /home/vagrant/.composer/vendor/bin/phpunit --color tests\"")))

(defvar path-to-vagrant-directory "~/vagrant"
  "Path to the directory where your Vagrant file is.")

(define-minor-mode phpunit-vagrant-mode
  :lighter "PHPUnit "
  :keymap (let ((map (make-sparse-keymap)))
            (define-key map (kbd "C-x pa") 'run-all-tests)
            map))

(provide 'phpunit-vagrant-mode)
