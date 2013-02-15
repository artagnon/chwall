package org.artagnon.chwall

import android.app.Activity
import android.content.Intent
import android.provider.MediaStore

class ChwallActivity < Activity
  def onCreate(state)
    super state
    setContentView R.layout.main
  end

  $Override
  def onStart
    super
    startActivity Intent.new Intent.ACTION_PICK,
                             MediaStore.Images.Media.INTERNAL_CONTENT_URI
    finish
  end

  $Override
  def onActivityResult(requestCode, resultCode, data)
    super
    if (resultCode == -1)
        contentpath = data.getDataString()
    end
  end
end
