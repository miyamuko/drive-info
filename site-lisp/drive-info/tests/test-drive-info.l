;; --*- mode: lisp-interaction; package: user -*--

(super-require "drive-info" :use '(:drive-info.api))

*drive-info-version*
"1.1.0"

(get-free-logical-drive-letters)
(#\A #\B #\E #\F #\G #\H #\I #\J #\K #\L #\M #\N #\O #\P #\Q #\R #\S #\T #\U #\V #\W #\X #\Y #\Z)

(drive:get-logical-drive-letters)
(#\C #\D)

(get-drive-info #\C)
((:drive (:name . "C:\\") (:type . :fixed))
 (:volume
  (:volume-name . "ローカル ディスク")
  (:volume-serial-number . 2497557799)
  (:maximum-component-length . 255)
  (:file-system-flags
   ((:case-sensitive-search . t)
    (:case-preserved-names . t)
    (:unicode-on-disk . t)
    (:persistent-acls . t)
    (:file-compression . t)
    (:volume-quotas . t)
    (:supports-sparse-files . t)
    (:supports-reparse-points . t)
    (:supports-remote-storage)
    (:volume-is-compressed)
    (:supports-object-ids . t)
    (:supports-encryption . t)
    (:named-streams . t)
    (:read-only-volume)
    )
   )
  (:file-system-name . "NTFS"))
 (:space
  (:free-bytes-available . 30831427584)
  (:total-number-of-bytes . 120023252992)
  (:total-number-of-free-bytes . 30831427584)
  (:total-number-of-used-bytes . 89191825408)
  (:free-bytes% . 25.68788)
  (:used-bytes% . 74.31212)))

(get-logical-drives)
("C:\\" "D:\\")
(get-logical-drive-letters)
(#\C #\D)
(get-fixed-logical-drives)
("C:\\")
(get-fixed-logical-drive-letters)
(#\C)
(get-free-logical-drives)
("A:\\" "B:\\" "E:\\" "F:\\" "G:\\" "H:\\" "I:\\" "J:\\" "K:\\" "L:\\" "M:\\" "N:\\" "O:\\" "P:\\" "Q:\\" "R:\\" "S:\\" "T:\\" "U:\\" "V:\\" "W:\\" "X:\\" "Y:\\" "Z:\\")
(get-free-logical-drive-letters)
(#\A #\B #\E #\F #\G #\H #\I #\J #\K #\L #\M #\N #\O #\P #\Q #\R #\S #\T #\U #\V #\W #\X #\Y #\Z)

(drive-exist-p #\A)
nil
(drive-exist-p "C")
t
(drive-exist-p "c:")
t
(drive-exist-p "c:\\")
t
(drive-exist-p "d:\\foo")
t
(drive-exist-p "z::\\")
nil

(get-drive-type "C")
:fixed
(get-drive-type #\D)
:cdrom

(get-volume-information #\z)
nil
(get-volume-information #\c)
((:volume-name . "ローカル ディスク") (:volume-serial-number . 2497557799) (:maximum-component-length . 255) (:file-system-flags ((:case-sensitive-search . t) (:case-preserved-names . t) (:unicode-on-disk . t) (:persistent-acls . t) (:file-compression . t) (:volume-quotas . t) (:supports-sparse-files . t) (:supports-reparse-points . t) (:supports-remote-storage) (:volume-is-compressed) (:supports-object-ids . t) (:supports-encryption . t) (:named-streams . t) (:read-only-volume))) (:file-system-name . "NTFS"))

(get-disk-free-space #\d)
nil
(get-disk-free-space #\c)
((:free-bytes-available . 30832463872) (:total-number-of-bytes . 120023252992) (:total-number-of-free-bytes . 30832463872) (:total-number-of-used-bytes . 89190789120) (:free-bytes% . 25.68874) (:used-bytes% . 74.31126))

(drive-name #\c)
"C:\\"
(drive-name :f)
"F:\\"

(drive-letter "Z:\\foobar")
#\Z
(drive-letter #\d)
#\D
(drive-letter 'd)
#\D
(drive-letter :d)
#\D
(drive-letter 'dfoo)
nil
(drive-letter '|d:|)
#\D

