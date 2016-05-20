.class final Lcom/ushaqi/zhuishushenqi/ui/user/q;
.super Lcom/ushaqi/zhuishushenqi/a/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ushaqi/zhuishushenqi/a/c",
        "<",
        "Ljava/lang/String;",
        "Lcom/ushaqi/zhuishushenqi/model/ChangeGenderRoot;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/user/ModifyUserInfoActivity;


# direct methods
.method public constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/user/ModifyUserInfoActivity;Landroid/app/Activity;I)V
    .locals 1

    .prologue
    .line 307
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/user/q;->a:Lcom/ushaqi/zhuishushenqi/ui/user/ModifyUserInfoActivity;

    .line 308
    const v0, 0x7f05006a

    invoke-direct {p0, p2, v0}, Lcom/ushaqi/zhuishushenqi/a/c;-><init>(Landroid/app/Activity;I)V

    .line 309
    return-void
.end method

.method private varargs a([Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/ChangeGenderRoot;
    .locals 3

    .prologue
    .line 314
    invoke-static {}, Landroid/support/design/widget/am;->e()Lcom/ushaqi/zhuishushenqi/model/Account;

    move-result-object v0

    .line 315
    if-eqz v0, :cond_0

    .line 317
    :try_start_0
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/api/b;->b()Lcom/ushaqi/zhuishushenqi/api/ApiService;

    move-result-object v1

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/Account;->getToken()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {v1, v0, v2}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->v(Ljava/lang/String;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/ChangeGenderRoot;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 322
    :goto_0
    return-object v0

    .line 318
    :catch_0
    move-exception v0

    .line 319
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 322
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 303
    check-cast p1, [Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/user/q;->a([Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/ChangeGenderRoot;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 303
    check-cast p1, Lcom/ushaqi/zhuishushenqi/model/ChangeGenderRoot;

    .line 1327
    if-eqz p1, :cond_1

    .line 1328
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/ChangeGenderRoot;->isOk()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1329
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/MyApplication;->a()Lcom/ushaqi/zhuishushenqi/MyApplication;

    move-result-object v0

    const-string v1, "savedObject_userinfo"

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/MyApplication;->b(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/UserInfo;

    .line 1330
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/user/q;->a:Lcom/ushaqi/zhuishushenqi/ui/user/ModifyUserInfoActivity;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/ui/user/ModifyUserInfoActivity;->a(Lcom/ushaqi/zhuishushenqi/ui/user/ModifyUserInfoActivity;)Lcom/ushaqi/zhuishushenqi/model/User;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/User;->getGender()Ljava/lang/String;

    move-result-object v1

    const-string v2, "male"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "female"

    .line 1331
    :goto_0
    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/model/UserInfo;->setGender(Ljava/lang/String;)V

    .line 1332
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/MyApplication;->a()Lcom/ushaqi/zhuishushenqi/MyApplication;

    move-result-object v2

    const-string v3, "savedObject_userinfo"

    invoke-virtual {v2, v0, v3}, Lcom/ushaqi/zhuishushenqi/MyApplication;->a(Ljava/io/Serializable;Ljava/lang/String;)Z

    .line 1334
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/q;->a:Lcom/ushaqi/zhuishushenqi/ui/user/ModifyUserInfoActivity;

    .line 1384
    invoke-static {v0}, Landroid/support/design/widget/am;->a(Landroid/app/Activity;)Lcom/ushaqi/zhuishushenqi/model/Account;

    move-result-object v0

    .line 1335
    if-eqz v0, :cond_0

    .line 1336
    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/user/q;->a:Lcom/ushaqi/zhuishushenqi/ui/user/ModifyUserInfoActivity;

    invoke-static {v2}, Lcom/ushaqi/zhuishushenqi/ui/user/ModifyUserInfoActivity;->a(Lcom/ushaqi/zhuishushenqi/ui/user/ModifyUserInfoActivity;)Lcom/ushaqi/zhuishushenqi/model/User;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/ushaqi/zhuishushenqi/model/User;->setGender(Ljava/lang/String;)V

    .line 1337
    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/user/q;->a:Lcom/ushaqi/zhuishushenqi/ui/user/ModifyUserInfoActivity;

    invoke-static {v2}, Lcom/ushaqi/zhuishushenqi/ui/user/ModifyUserInfoActivity;->a(Lcom/ushaqi/zhuishushenqi/ui/user/ModifyUserInfoActivity;)Lcom/ushaqi/zhuishushenqi/model/User;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/ushaqi/zhuishushenqi/model/Account;->setUser(Lcom/ushaqi/zhuishushenqi/model/User;)V

    .line 1338
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/MyApplication;->a()Lcom/ushaqi/zhuishushenqi/MyApplication;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/ushaqi/zhuishushenqi/MyApplication;->a(Lcom/ushaqi/zhuishushenqi/model/Account;)V

    .line 1341
    :cond_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/q;->a:Lcom/ushaqi/zhuishushenqi/ui/user/ModifyUserInfoActivity;

    iget-object v2, v0, Lcom/ushaqi/zhuishushenqi/ui/user/ModifyUserInfoActivity;->mGenderView:Landroid/widget/TextView;

    const-string v0, "male"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "\u7537"

    :goto_1
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1342
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/q;->a:Lcom/ushaqi/zhuishushenqi/ui/user/ModifyUserInfoActivity;

    const-string v1, "\u4fee\u6539\u6210\u529f"

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;Ljava/lang/String;)V

    .line 1343
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/event/i;->a()Lcom/squareup/a/b;

    move-result-object v0

    new-instance v1, Lcom/ushaqi/zhuishushenqi/event/K;

    invoke-direct {v1}, Lcom/ushaqi/zhuishushenqi/event/K;-><init>()V

    invoke-virtual {v0, v1}, Lcom/squareup/a/b;->c(Ljava/lang/Object;)V

    .line 1344
    :cond_1
    :goto_2
    return-void

    .line 1330
    :cond_2
    const-string v1, "male"

    goto :goto_0

    .line 1341
    :cond_3
    const-string v0, "\u5973"

    goto :goto_1

    .line 1345
    :cond_4
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/q;->a:Lcom/ushaqi/zhuishushenqi/ui/user/ModifyUserInfoActivity;

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/ChangeGenderRoot;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_2
.end method
