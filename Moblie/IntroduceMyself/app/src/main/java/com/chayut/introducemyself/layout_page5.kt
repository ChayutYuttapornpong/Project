package com.chayut.introducemyself

import android.content.Intent
import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import androidx.recyclerview.widget.LinearLayoutManager
import com.chayut.introducemyself.adapter.adt2
import com.chayut.introducemyself.model.rv_data
import kotlinx.android.synthetic.main.activity_layout_page5.*

class layout_page5 : AppCompatActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_layout_page5)

        rv.layoutManager = LinearLayoutManager(this)

        val rv_dataLists = mutableListOf<rv_data>()
        rv_dataLists.add(rv_data(R.drawable.fb_icon,"Facebook","Chayut Yuttapornpong"))
        rv_dataLists.add(rv_data(R.drawable.ig,"Instagram","a_s_z_a_d_a"))
        rv_dataLists.add(rv_data(R.drawable.steam,"Steam","AsZaDa"))
        rv_dataLists.add(rv_data(R.drawable.gmail,"Gmail","chayut-y@rmutp.ac.th"))

        val adt = adt2(rv_dataLists)
        rv.adapter = adt

        back_button3.setOnClickListener {
            val page1 = Intent(this,MainActivity::class.java)
            startActivity(page1)
            this.finish()
        }
    }
}