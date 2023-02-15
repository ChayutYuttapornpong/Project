package com.chayut.introducemyself.adapter

import android.content.Context
import android.content.Intent
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.widget.ImageView
import android.widget.LinearLayout
import android.widget.Toast
import androidx.appcompat.view.menu.MenuView.ItemView
import androidx.recyclerview.widget.RecyclerView
import com.chayut.introducemyself.R
import com.chayut.introducemyself.DetailActivity
import com.bumptech.glide.Glide

class adt(_context:Context,_arrName:ArrayList<String>,_arrUrl:ArrayList<String>):RecyclerView.Adapter<adt.ViewHolder>() {
    private var arrName = ArrayList<String>()
    private var arrUrl = ArrayList<String>()
    private val Context: Context

    init {
        arrName = _arrName
        arrUrl = _arrUrl
        Context = _context
    }

    inner class ViewHolder(itemView: View) : RecyclerView.ViewHolder(itemView)
    {
        var mainlayout: LinearLayout
        var img: ImageView


        init {
            img = itemView.findViewById(R.id.img)
            mainlayout = itemView.findViewById(R.id.mainlayout)
        }

    }

    override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): ViewHolder {
        val view = LayoutInflater.from(parent.context).inflate(R.layout.rv_row,parent,false)
        return ViewHolder(view)
    }
    override fun onBindViewHolder(holder: ViewHolder, position: Int) {
        Glide.with(Context)
            .asBitmap()
            .load(arrUrl[position])
            .into(holder.img)

        holder.mainlayout.setOnClickListener{

            val it = Intent(Context,DetailActivity::class.java)
            it.putExtra("image_name",arrName[position])
            it.putExtra("image_url",arrUrl[position])
            Context.startActivity(it)
        }
    }
    override fun getItemCount(): Int {
        return arrName.size
    }


}