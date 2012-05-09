#!/bin/sh

#patch -b --dry-run <<EOF
#patch -b <<EOF
--- /usr/share/ibus-table/engine/table.py.orig	2012-05-09 18:41:27.867293430 +0800
+++ /usr/share/ibus-table/engine/table.py	2012-05-09 19:09:36.751668173 +0800
@@ -124,6 +124,7 @@
                 if self.db._is_chinese:
                     # if IME declare as Chinese IME
                     return 0
+                    return 4
                 else:
                     return -1
         except:
@@ -831,7 +832,7 @@
 #    _new_phrase_color         = 0xffffff

     # lookup table page size
-    _page_size = 6
+    _page_size = 9

     def __init__ (self, bus, obj_path, db ):
         super(tabengine,self).__init__ (bus,obj_path)
EOF
