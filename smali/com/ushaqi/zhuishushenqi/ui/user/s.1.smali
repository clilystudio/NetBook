.class final Lcom/ushaqi/zhuishushenqi/ui/user/s;
.super Lcom/ushaqi/zhuishushenqi/a/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ushaqi/zhuishushenqi/a/c",
        "<",
        "Ljava/lang/String;",
        "Lcom/ushaqi/zhuishushenqi/model/ChangeNickNameRoot;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private synthetic b:Lcom/ushaqi/zhuishushenqi/ui/user/ModifyUserInfoActivity;


# direct methods
.method public constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/user/ModifyUserInfoActivity;Landroid/app/Activity;I)V
    .locals 1

    .prologue
    .line 272
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/user/s;->b:Lcom/ushaqi/zhuishushenqi/ui/user/ModifyUserInfoActivity;

    .line 273
    const v0, 0x7f05006a

    invoke-direct {p0, p2, v0}, Lcom/ushaqi/zhuishushenqi/a/c;-><init>(Landroid/app/Activity;I)V

    .line 274
    return-void
.end method

.method private varargs a([Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/ChangeNickNameRoot;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 278
    aget-object v0, p1, v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/s;->a:Ljava/lang/String;

    .line 279
    invoke-static {}, Landroid/support/design/widget/am;->e()Lcom/ushaqi/zhuishushenqi/model/Account;

    move-result-object v0

    .line 280
    if-eqz v0, :cond_0

    .line 282
    :try_start_0
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/api/b;->b()Lcom/ushaqi/zhuishushenqi/api/ApiService;

    move-result-object v1

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/Account;->getToken()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {v1, v0, v2}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->u(Ljava/lang/String;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/ChangeNickNameRoot;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 287
    :goto_0
    return-object v0

    .line 283
    :catch_0
    move-exception v0

    .line 284
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 287
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 268
    check-cast p1, [Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/user/s;->a([Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/ChangeNickNameRoot;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 268
    check-cast p1, Lcom/ushaqi/zhuishushenqi/model/ChangeNickNameRoot;

    .line 1292
    if-eqz p1, :cond_0

    .line 1293
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/ChangeNickNameRoot;->isOk()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1294
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/s;->b:Lcom/ushaqi/zhuishushenqi/ui/user/ModifyUserInfoActivity;

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/ui/user/ModifyUserInfoActivity;->mNameView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/user/s;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1295
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/s;->b:Lcom/ushaqi/zhuishushenqi/ui/user/ModifyUserInfoActivity;

    const-string v1, "\u4fee\u6539\u6210\u529f"

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;Ljava/lang/String;)V

    .line 1296
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/event/i;->a()Lcom/squareup/a/b;

    move-result-object v0

    new-instance v1, Lcom/ushaqi/zhuishushenqi/event/K;

    invoke-direct {v1}, Lcom/ushaqi/zhuishushenqi/event/K;-><init>()V

    invoke-virtual {v0, v1}, Lcom/squareup/a/b;->c(Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void

    .line 1298
    :cond_1
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/s;->b:Lcom/ushaqi/zhuishushenqi/ui/user/ModifyUserInfoActivity;

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/ChangeNickNameRoot;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0
.end method
