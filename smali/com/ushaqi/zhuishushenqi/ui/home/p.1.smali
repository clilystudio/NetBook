.class final Lcom/ushaqi/zhuishushenqi/ui/home/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;)V
    .locals 0

    .prologue
    .line 1307
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/home/p;->a:Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 1310
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/p;->a:Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;

    invoke-static {v0, p3}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->a(Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;I)Lcom/ushaqi/zhuishushenqi/model/BookShelf;

    move-result-object v0

    .line 1311
    if-nez v0, :cond_1

    .line 1381
    :cond_0
    :goto_0
    return-void

    .line 1314
    :cond_1
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/home/p;->a:Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->a(Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;)Lcom/ushaqi/zhuishushenqi/adapter/HomeShelfAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/adapter/HomeShelfAdapter;->a()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1315
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/p;->a:Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->a(Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;)Lcom/ushaqi/zhuishushenqi/adapter/HomeShelfAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/home/p;->a:Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->j(Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v1

    sub-int v1, p3, v1

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/adapter/HomeShelfAdapter;->a(I)V

    goto :goto_0

    .line 1319
    :cond_2
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/BookShelf;->getType()I

    move-result v1

    .line 1321
    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 1323
    :pswitch_0
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/BookShelf;->getBookRecord()Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;

    move-result-object v0

    .line 1324
    new-instance v1, Lcom/ushaqi/zhuishushenqi/util/m;

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/home/p;->a:Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;

    invoke-virtual {v2}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/ushaqi/zhuishushenqi/util/m;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v1, v0}, Lcom/ushaqi/zhuishushenqi/util/m;->a(Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;)V

    .line 1326
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->isUnread()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1327
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->setUnread(Z)V

    .line 1328
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->save()Ljava/lang/Long;

    .line 1329
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/home/p;->a:Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->a(Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;)Lcom/ushaqi/zhuishushenqi/adapter/HomeShelfAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/adapter/HomeShelfAdapter;->notifyDataSetChanged()V

    .line 1332
    :cond_3
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->isRecommended()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1333
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/home/p;->a:Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v2, "book_recommend_read_click"

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/umeng/a/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1337
    :pswitch_1
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/BookShelf;->getTxt()Lcom/ushaqi/zhuishushenqi/db/BookFile;

    move-result-object v0

    .line 1338
    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/db/BookFile;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1339
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/db/BookFile;->getPathAndName()Ljava/lang/String;

    move-result-object v0

    .line 1340
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.ushaqi.zhuishushenqi.ACTION_READ_TXT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1341
    const-string v2, "file_name"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1342
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/p;->a:Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1344
    :cond_4
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/home/p;->a:Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v2, "\u4e66\u7c4d\u4e0d\u5b58\u5728"

    invoke-static {v1, v2}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;Ljava/lang/String;)V

    .line 1345
    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/model/TxtFileObject;->delete(Lcom/ushaqi/zhuishushenqi/db/BookFile;)V

    .line 1346
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/event/i;->a()Lcom/squareup/a/b;

    move-result-object v0

    new-instance v1, Lcom/ushaqi/zhuishushenqi/event/A;

    invoke-direct {v1}, Lcom/ushaqi/zhuishushenqi/event/A;-><init>()V

    invoke-virtual {v0, v1}, Lcom/squareup/a/b;->c(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1350
    :pswitch_2
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/BookShelf;->getAdvert()Lcom/ushaqi/zhuishushenqi/model/Advert;

    move-result-object v0

    .line 1351
    invoke-virtual {v0, p2}, Lcom/ushaqi/zhuishushenqi/model/Advert;->processClick(Landroid/view/View;)V

    .line 1354
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/Advert;->isRead()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1355
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/home/p;->a:Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;

    invoke-static {v1, v0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->a(Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;Lcom/ushaqi/zhuishushenqi/model/Advert;)V

    .line 1356
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/p;->a:Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->a(Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;)Lcom/ushaqi/zhuishushenqi/adapter/HomeShelfAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/adapter/HomeShelfAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 1360
    :pswitch_3
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/p;->a:Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "feed_intro"

    invoke-static {v0, v1}, Lcom/arcsoft/hpay100/a/a;->l(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 1361
    if-eqz v0, :cond_5

    .line 1362
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/home/p;->a:Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/ushaqi/zhuishushenqi/ui/feed/FeedIntroActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1366
    :goto_1
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/home/p;->a:Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;

    invoke-virtual {v1, v0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1364
    :cond_5
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/home/p;->a:Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/ushaqi/zhuishushenqi/ui/feed/FeedListActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_1

    .line 1370
    :pswitch_4
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/BookShelf;->getAlbum()Lcom/ushaqi/zhuishushenqi/db/AudioRecord;

    move-result-object v0

    .line 1371
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/home/p;->a:Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;

    invoke-static {v1, v0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->a(Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;Lcom/ushaqi/zhuishushenqi/db/AudioRecord;)V

    .line 1372
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/db/AudioRecord;->isUpdateReaded()Z

    move-result v1

    if-nez v1, :cond_6

    .line 1373
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/db/AudioRecord;->getBookId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/ushaqi/zhuishushenqi/db/AudioRecord;->updateRecordRead(Ljava/lang/String;Z)V

    .line 1375
    :cond_6
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/db/AudioRecord;->getBookId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/db/AudioRecord;->updateLastRead(Ljava/lang/String;)V

    .line 1377
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/p;->a:Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->c(Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;)V

    goto/16 :goto_0

    .line 1321
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
