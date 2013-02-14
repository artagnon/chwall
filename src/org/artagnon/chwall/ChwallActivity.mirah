package org.artagnon.chwall

import android.app.Activity

class ChwallActivity < Activity
  def onCreate(state)
    super state
    setContentView R.layout.main
  end
end
