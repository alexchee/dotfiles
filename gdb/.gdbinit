define puts_eval
  call (void)rb_p((char*)rb_eval_string_protect($arg0, (int*)0))
end

define redirect_stdout
  call (void)rb_eval_string("$_old_stdout, $stdout = $stdout, File.open('/tmp/ruby-debug.' + Process.pid.to_s, 'a'); $stdout.sync = true")
end

define raise_error
  call (void)rb_raise((int)rb_eException, "no way")
end

define stacky
  t a a bt
end
