class CreateTopics < ActiveRecord::Migration[7.0]
  def change
    create_table :topics do |t|
      # t.integer :id # 话题编号
      t.string :title, null: false # 标题
      t.string :node_name, null: false # 节点名字
      t.integer :node_id, null: false # 节点 ID 
      t.boolean :excellent # 是否精华
      t.boolean :deleted # 是否已删除
      t.integer :replies_count, default: 0, null: false # 回帖数量
      t.integer :likes_count,  default: 0 # 赞数量
      t.integer :last_reply_user_id # 最后回复人用户编号
      t.string :last_reply_user_login # 最后回复者 login
      t.datetime :replied_at # 最后回帖时间
      t.timestamps

      # 关联 user 数据
      # t.references user #  最后回复者用户对象
    end
    # create_table :poetries do |t|
    #   # t.integer :id
    #   t.integer :poet_id
    #   t.text :content
    #   t.string :title
    #   # 关联 poets 数据
    #   t.references :poets, foreign_key: true
    #   # db.relationship(Poet, foreign_keys=poet_id, uselist=False)

    #   t.timestamps
  end
end
