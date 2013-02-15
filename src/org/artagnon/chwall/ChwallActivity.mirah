package org.artagnon.chwall

import android.app.Activity
import android.content.Intent
import android.graphics.BitmapFactory
import android.app.WallpaperManager

class ChwallActivity < Activity
  def onCreate(state)
    super
    setContentView R.layout.main
  end

  $Override
  def onStart
    super
    Intent intent = Intent.new(Intent.ACTION_PICK)
    intent.setType "image/*"
    startActivityForResult Intent.createChooser(intent, "Select Picture"), 0
  end

  $Override
  def onActivityResult(requestCode, resultCode, data:Intent)
    super
    thumb = BitmapFactory.decodeFile "/storage/sdcard0/download/rr-bcr.jpeg"
    manager = WallpaperManager.getInstance self
    manager.setBitmap thumb
  end
end
