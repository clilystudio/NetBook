.class final Lcom/ushaqi/zhuishushenqi/ui/home/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;)V
    .locals 0

    .prologue
    .line 1388
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/home/q;->a:Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    .line 1391
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/q;->a:Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;

    invoke-static {v0, p3}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->a(Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;I)Lcom/ushaqi/zhuishushenqi/model/BookShelf;

    move-result-object v1

    .line 1392
    if-nez v1, :cond_0

    .line 1420
    :goto_0
    return v4

    .line 1395
    :cond_0
    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/BookShelf;->getType()I

    move-result v2

    .line 1396
    const/4 v0, 0x0

    .line 1397
    if-ne v2, v4, :cond_2

    .line 1398
    new-array v0, v3, [Ljava/lang/String;

    const-string v2, "\u5220\u9664"

    aput-object v2, v0, v5

    const-string v2, "\u53bb\u5e7f\u544a"

    aput-object v2, v0, v4

    .line 1419
    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/home/q;->a:Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;

    invoke-static {v2, v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->a(Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;[Ljava/lang/CharSequence;Lcom/ushaqi/zhuishushenqi/model/BookShelf;)V

    goto :goto_0

    .line 1399
    :cond_2
    if-nez v2, :cond_4

    .line 1400
    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/BookShelf;->isTop()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1401
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v2, "\u53d6\u6d88\u7f6e\u9876"

    aput-object v2, v0, v5

    const-string v2, "\u4e66\u7c4d\u8be6\u60c5"

    aput-object v2, v0, v4

    const-string v2, "\u79fb\u5165\u517b\u80a5\u533a"

    aput-object v2, v0, v3

    const-string v2, "\u7f13\u5b58\u5168\u672c"

    aput-object v2, v0, v6

    const-string v2, "\u5220\u9664"

    aput-object v2, v0, v7

    const/4 v2, 0x5

    const-string v3, "\u6279\u91cf\u7ba1\u7406"

    aput-object v3, v0, v2

    goto :goto_1

    .line 1403
    :cond_3
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v2, "\u7f6e\u9876"

    aput-object v2, v0, v5

    const-string v2, "\u4e66\u7c4d\u8be6\u60c5"

    aput-object v2, v0, v4

    const-string v2, "\u79fb\u5165\u517b\u80a5\u533a"

    aput-object v2, v0, v3

    const-string v2, "\u7f13\u5b58\u5168\u672c"

    aput-object v2, v0, v6

    const-string v2, "\u5220\u9664"

    aput-object v2, v0, v7

    const/4 v2, 0x5

    const-string v3, "\u6279\u91cf\u7ba1\u7406"

    aput-object v3, v0, v2

    goto :goto_1

    .line 1405
    :cond_4
    if-ne v2, v3, :cond_6

    .line 1406
    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/BookShelf;->isTop()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1407
    new-array v0, v6, [Ljava/lang/String;

    const-string v2, "\u53d6\u6d88\u7f6e\u9876"

    aput-object v2, v0, v5

    const-string v2, "\u5220\u9664"

    aput-object v2, v0, v4

    const-string v2, "\u6279\u91cf\u7ba1\u7406"

    aput-object v2, v0, v3

    goto :goto_1

    .line 1409
    :cond_5
    new-array v0, v6, [Ljava/lang/String;

    const-string v2, "\u7f6e\u9876"

    aput-object v2, v0, v5

    const-string v2, "\u5220\u9664"

    aput-object v2, v0, v4

    const-string v2, "\u6279\u91cf\u7ba1\u7406"

    aput-object v2, v0, v3

    goto :goto_1

    .line 1411
    :cond_6
    if-ne v2, v7, :cond_1

    .line 1412
    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/BookShelf;->isTop()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1413
    new-array v0, v7, [Ljava/lang/String;

    const-string v2, "\u53d6\u6d88\u7f6e\u9876"

    aput-object v2, v0, v5

    const-string v2, "\u4e66\u7c4d\u8be6\u60c5"

    aput-object v2, v0, v4

    const-string v2, "\u5220\u9664"

    aput-object v2, v0, v3

    const-string v2, "\u6279\u91cf\u7ba1\u7406"

    aput-object v2, v0, v6

    goto/16 :goto_1

    .line 1415
    :cond_7
    new-array v0, v7, [Ljava/lang/String;

    const-string v2, "\u7f6e\u9876"

    aput-object v2, v0, v5

    const-string v2, "\u4e66\u7c4d\u8be6\u60c5"

    aput-object v2, v0, v4

    const-string v2, "\u5220\u9664"

    aput-object v2, v0, v3

    const-string v2, "\u6279\u91cf\u7ba1\u7406"

    aput-object v2, v0, v6

    goto/16 :goto_1
.end method
