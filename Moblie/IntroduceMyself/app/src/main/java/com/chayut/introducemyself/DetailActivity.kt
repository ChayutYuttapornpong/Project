package com.chayut.introducemyself

import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import com.bumptech.glide.Glide
import android.widget.ImageView
import kotlinx.android.synthetic.main.activity_detail.*


class DetailActivity : AppCompatActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_detail)

        if (intent.hasExtra("image_url") &&intent.hasExtra("image_name")){
            val imgURL = intent.getStringExtra("image_url")
            val imgName = intent.getStringExtra("image_name")

            Glide.with(this)
                .asBitmap()
                .load(imgURL)
                .into(imgDetail)
                }
        cmdClose.setOnClickListener{
            finish()
        }

    }


}