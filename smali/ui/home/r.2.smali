.class final Lcom/ushaqi/zhuishushenqi/ui/home/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/model/BookShelf;

.field private synthetic b:Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;Lcom/ushaqi/zhuishushenqi/model/BookShelf;)V
    .locals 0

    .prologue
    .line 1429
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/home/r;->b:Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;

    iput-object p2, p0, Lcom/ushaqi/zhuishushenqi/ui/home/r;->a:Lcom/ushaqi/zhuishushenqi/model/BookShelf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 1432
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/r;->a:Lcom/ushaqi/zhuishushenqi/model/BookShelf;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/BookShelf;->getType()I

    move-result v0

    .line 1433
    packed-switch v0, :pswitch_data_0

    .line 1478
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 1435
    :pswitch_1
    if-nez p2, :cond_1

    .line 1436
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/r;->b:Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/home/r;->a:Lcom/ushaqi/zhuishushenqi/model/BookShelf;

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->a(Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;Lcom/ushaqi/zhuishushenqi/model/BookShelf;)V

    goto :goto_0

    .line 1437
    :cond_1
    if-ne p2, v1, :cond_0

    .line 1438
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/r;->b:Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->k(Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;)V

    goto :goto_0

    .line 1442
    :pswitch_2
    if-nez p2, :cond_2

    .line 1443
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/r;->b:Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/home/r;->a:Lcom/ushaqi/zhuishushenqi/model/BookShelf;

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->b(Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;Lcom/ushaqi/zhuishushenqi/model/BookShelf;)V

    goto :goto_0

    .line 1444
    :cond_2
    if-ne p2, v1, :cond_3

    .line 1445
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/r;->b:Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/home/r;->a:Lcom/ushaqi/zhuishushenqi/model/BookShelf;

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/BookShelf;->getBookRecord()Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->a(Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;)V

    goto :goto_0

    .line 1446
    :cond_3
    if-ne p2, v2, :cond_4

    .line 1447
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/r;->b:Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/home/r;->a:Lcom/ushaqi/zhuishushenqi/model/BookShelf;

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/BookShelf;->getBookRecord()Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->b(Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;)V

    goto :goto_0

    .line 1448
    :cond_4
    if-ne p2, v3, :cond_5

    .line 1449
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/r;->b:Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/home/r;->a:Lcom/ushaqi/zhuishushenqi/model/BookShelf;

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/BookShelf;->getBookRecord()Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->c(Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;)V

    goto :goto_0

    .line 1450
    :cond_5
    const/4 v0, 0x4

    if-ne p2, v0, :cond_6

    .line 1451
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/r;->b:Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/home/r;->a:Lcom/ushaqi/zhuishushenqi/model/BookShelf;

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->c(Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;Lcom/ushaqi/zhuishushenqi/model/BookShelf;)V

    goto :goto_0

    .line 1452
    :cond_6
    const/4 v0, 0x5

    if-ne p2, v0, :cond_0

    .line 1453
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/r;->b:Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->d()V

    goto :goto_0

    .line 1457
    :pswitch_3
    if-nez p2, :cond_7

    .line 1458
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/r;->b:Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/home/r;->a:Lcom/ushaqi/zhuishushenqi/model/BookShelf;

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->b(Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;Lcom/ushaqi/zhuishushenqi/model/BookShelf;)V

    goto :goto_0

    .line 1459
    :cond_7
    if-ne p2, v1, :cond_8

    .line 1460
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/r;->b:Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/home/r;->a:Lcom/ushaqi/zhuishushenqi/model/BookShelf;

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->c(Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;Lcom/ushaqi/zhuishushenqi/model/BookShelf;)V

    goto :goto_0

    .line 1461
    :cond_8
    if-ne p2, v2, :cond_0

    .line 1462
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/r;->b:Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->d()V

    goto :goto_0

    .line 1467
    :pswitch_4
    if-nez p2, :cond_9

    .line 1468
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/r;->b:Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/home/r;->a:Lcom/ushaqi/zhuishushenqi/model/BookShelf;

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->b(Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;Lcom/ushaqi/zhuishushenqi/model/BookShelf;)V

    goto :goto_0

    .line 1469
    :cond_9
    if-ne p2, v1, :cond_a

    .line 1470
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/r;->b:Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/home/r;->a:Lcom/ushaqi/zhuishushenqi/model/BookShelf;

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/BookShelf;->getAlbum()Lcom/ushaqi/zhuishushenqi/db/AudioRecord;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->b(Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;Lcom/ushaqi/zhuishushenqi/db/AudioRecord;)V

    goto/16 :goto_0

    .line 1471
    :cond_a
    if-ne p2, v2, :cond_b

    .line 1472
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/r;->b:Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/home/r;->a:Lcom/ushaqi/zhuishushenqi/model/BookShelf;

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->c(Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;Lcom/ushaqi/zhuishushenqi/model/BookShelf;)V

    goto/16 :goto_0

    .line 1473
    :cond_b
    if-ne p2, v3, :cond_0

    .line 1474
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/r;->b:Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->d()V

    goto/16 :goto_0

    .line 1433
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method
