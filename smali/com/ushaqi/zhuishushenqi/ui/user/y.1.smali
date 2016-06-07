.class final Lcom/ushaqi/zhuishushenqi/ui/user/y;
.super Lcom/ushaqi/zhuishushenqi/a/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ushaqi/zhuishushenqi/a/c",
        "<",
        "Ljava/lang/String;",
        "Lcom/ushaqi/zhuishushenqi/model/ResultStatus;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/user/MyFavTopicFragment;


# direct methods
.method public constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/user/MyFavTopicFragment;Landroid/app/Activity;I)V
    .locals 1

    .prologue
    .line 332
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/user/y;->a:Lcom/ushaqi/zhuishushenqi/ui/user/MyFavTopicFragment;

    .line 333
    const v0, 0x7f05006a

    invoke-direct {p0, p2, v0}, Lcom/ushaqi/zhuishushenqi/a/c;-><init>(Landroid/app/Activity;I)V

    .line 334
    return-void
.end method

.method private static varargs a([Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/ResultStatus;
    .locals 3

    .prologue
    .line 339
    :try_start_0
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/api/b;->a()Lcom/ushaqi/zhuishushenqi/api/b;

    invoke-static {}, Lcom/ushaqi/zhuishushenqi/api/b;->b()Lcom/ushaqi/zhuishushenqi/api/ApiService;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, p0, v1

    const/4 v2, 0x1

    aget-object v2, p0, v2

    invoke-virtual {v0, v1, v2}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->z(Ljava/lang/String;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/ResultStatus;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 343
    :goto_0
    return-object v0

    .line 340
    :catch_0
    move-exception v0

    .line 341
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 343
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 330
    check-cast p1, [Ljava/lang/String;

    invoke-static {p1}, Lcom/ushaqi/zhuishushenqi/ui/user/y;->a([Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/ResultStatus;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 330
    check-cast p1, Lcom/ushaqi/zhuishushenqi/model/ResultStatus;

    .line 1349
    if-eqz p1, :cond_1

    .line 1351
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/ResultStatus;->isOk()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1352
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/user/y;->b()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "\u5220\u9664\u6210\u529f"

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;Ljava/lang/String;)V

    .line 1353
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/y;->a:Lcom/ushaqi/zhuishushenqi/ui/user/MyFavTopicFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/user/MyFavTopicFragment;->d(Lcom/ushaqi/zhuishushenqi/ui/user/MyFavTopicFragment;)Lcom/ushaqi/zhuishushenqi/widget/LabelPtrListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/widget/LabelPtrListView;->setRefreshing()V

    .line 1357
    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/user/y;->b()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "\u5220\u9664\u5931\u8d25\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5"

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0

    .line 1362
    :cond_1
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/user/y;->b()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "\u5220\u9664\u5931\u8d25\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u6216\u7a0d\u540e\u518d\u8bd5"

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0
.end method
