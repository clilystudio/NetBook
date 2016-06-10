.class final Lcom/ushaqi/zhuishushenqi/ui/user/t;
.super Lcom/ushaqi/zhuishushenqi/a/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ushaqi/zhuishushenqi/a/c",
        "<",
        "Ljava/lang/String;",
        "Lcom/ushaqi/zhuishushenqi/model/Root;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Landroid/net/Uri;

.field private synthetic b:Lcom/ushaqi/zhuishushenqi/ui/user/ModifyUserInfoActivity;


# direct methods
.method public constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/user/ModifyUserInfoActivity;Lcom/ushaqi/zhuishushenqi/ui/user/ModifyUserInfoActivity;Ljava/lang/String;Landroid/net/Uri;)V
    .locals 0

    .prologue
    .line 355
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/user/t;->b:Lcom/ushaqi/zhuishushenqi/ui/user/ModifyUserInfoActivity;

    .line 356
    invoke-direct {p0, p2, p3}, Lcom/ushaqi/zhuishushenqi/a/c;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    .line 357
    iput-object p4, p0, Lcom/ushaqi/zhuishushenqi/ui/user/t;->a:Landroid/net/Uri;

    .line 358
    return-void
.end method

.method private varargs a()Lcom/ushaqi/zhuishushenqi/model/Root;
    .locals 3

    .prologue
    .line 363
    :try_start_0
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/api/b;->b()Lcom/ushaqi/zhuishushenqi/api/ApiService;

    move-result-object v0

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/user/t;->b:Lcom/ushaqi/zhuishushenqi/ui/user/ModifyUserInfoActivity;

    .line 1384
    invoke-static {v1}, Landroid/support/design/widget/am;->a(Landroid/app/Activity;)Lcom/ushaqi/zhuishushenqi/model/Account;

    move-result-object v1

    .line 363
    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/Account;->getToken()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/user/t;->a:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a(Ljava/lang/String;Landroid/net/Uri;)Lcom/ushaqi/zhuishushenqi/model/Root;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 367
    :goto_0
    return-object v0

    .line 364
    :catch_0
    move-exception v0

    .line 365
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 367
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 351
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/user/t;->a()Lcom/ushaqi/zhuishushenqi/model/Root;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 351
    check-cast p1, Lcom/ushaqi/zhuishushenqi/model/Root;

    .line 2372
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/Root;->isOk()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2373
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/t;->b:Lcom/ushaqi/zhuishushenqi/ui/user/ModifyUserInfoActivity;

    const-string v1, "\u4fee\u6539\u6210\u529f"

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;Ljava/lang/String;)V

    .line 2374
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/event/i;->a()Lcom/squareup/a/b;

    move-result-object v0

    new-instance v1, Lcom/ushaqi/zhuishushenqi/event/K;

    invoke-direct {v1}, Lcom/ushaqi/zhuishushenqi/event/K;-><init>()V

    invoke-virtual {v0, v1}, Lcom/squareup/a/b;->c(Ljava/lang/Object;)V

    .line 2375
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/t;->b:Lcom/ushaqi/zhuishushenqi/ui/user/ModifyUserInfoActivity;

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/ui/user/ModifyUserInfoActivity;->mPortrait:Lcom/ushaqi/zhuishushenqi/ui/CircularSmartImageView;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/user/t;->a:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/CircularSmartImageView;->setImageURI(Landroid/net/Uri;)V

    :goto_0
    return-void

    .line 2377
    :cond_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/t;->b:Lcom/ushaqi/zhuishushenqi/ui/user/ModifyUserInfoActivity;

    const-string v1, "\u4e0a\u4f20\u5931\u8d25"

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0
.end method
