.class final Lcom/ushaqi/zhuishushenqi/ui/user/I;
.super Lcom/ushaqi/zhuishushenqi/a/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ushaqi/zhuishushenqi/a/c",
        "<",
        "Ljava/lang/String;",
        "Lcom/ushaqi/zhuishushenqi/model/PayBalance;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/user/PayAccountActivity;


# direct methods
.method public constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/user/PayAccountActivity;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 169
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/user/I;->a:Lcom/ushaqi/zhuishushenqi/ui/user/PayAccountActivity;

    .line 170
    invoke-direct {p0, p2}, Lcom/ushaqi/zhuishushenqi/a/c;-><init>(Landroid/app/Activity;)V

    .line 171
    return-void
.end method

.method public constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/user/PayAccountActivity;Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 173
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/user/I;->a:Lcom/ushaqi/zhuishushenqi/ui/user/PayAccountActivity;

    .line 174
    invoke-direct {p0, p2, p3}, Lcom/ushaqi/zhuishushenqi/a/c;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    .line 175
    return-void
.end method

.method private varargs a([Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/PayBalance;
    .locals 2

    .prologue
    .line 180
    :try_start_0
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/api/b;->b()Lcom/ushaqi/zhuishushenqi/api/ApiService;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->b(Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/PayBalance;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 184
    :goto_0
    return-object v0

    .line 181
    :catch_0
    move-exception v0

    .line 182
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 184
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 167
    check-cast p1, [Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/user/I;->a([Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/PayBalance;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 167
    check-cast p1, Lcom/ushaqi/zhuishushenqi/model/PayBalance;

    .line 1189
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/PayBalance;->isOk()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1190
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/I;->a:Lcom/ushaqi/zhuishushenqi/ui/user/PayAccountActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/user/PayAccountActivity;->b(Lcom/ushaqi/zhuishushenqi/ui/user/PayAccountActivity;)Lcom/ushaqi/zhuishushenqi/widget/PaySectionItem;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/PayBalance;->getBalance()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u679a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/widget/PaySectionItem;->setBalance(Ljava/lang/String;)V

    .line 1191
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/I;->a:Lcom/ushaqi/zhuishushenqi/ui/user/PayAccountActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/user/PayAccountActivity;->c(Lcom/ushaqi/zhuishushenqi/ui/user/PayAccountActivity;)Lcom/ushaqi/zhuishushenqi/widget/PaySectionItem;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/PayBalance;->getVoucherBalance()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u5f20"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/widget/PaySectionItem;->setBalance(Ljava/lang/String;)V

    .line 167
    :cond_0
    return-void
.end method
