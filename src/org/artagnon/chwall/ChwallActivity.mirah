package org.artagnon.chwall

import android.app.Activity
import android.content.Intent
import android.provider.MediaStore
import android.graphics.BitmapFactory
import android.app.WallpaperManager

class ChwallActivity < Activity
  def onCreate(state)
    super state
    setContentView R.layout.main
  end

  def onStartPrime
    # super
    uri = MediaStore.Images.Media.INTERNAL_CONTENT_URI
    startActivityForResult Intent.new(Intent.ACTION_PICK, uri), 0
    finish
  end

  $Override
  def onStart
    super
    thumb = BitmapFactory.decodeFile "/storage/sdcard0/download/rr-bcr.jpeg"
    manager = WallpaperManager.getInstance self
    manager.setBitmap thumb
    finish
  end
end
