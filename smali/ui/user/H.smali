.class final Lcom/ushaqi/zhuishushenqi/ui/user/H;
.super Lcom/ushaqi/zhuishushenqi/a/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ushaqi/zhuishushenqi/a/c",
        "<",
        "Ljava/lang/String;",
        "Lcom/ushaqi/zhuishushenqi/model/PayResult;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/user/PayAccountActivity;


# direct methods
.method public constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/user/PayAccountActivity;Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 140
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/user/H;->a:Lcom/ushaqi/zhuishushenqi/ui/user/PayAccountActivity;

    .line 141
    invoke-direct {p0, p2, p3}, Lcom/ushaqi/zhuishushenqi/a/c;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    .line 142
    return-void
.end method

.method private varargs a([Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/PayResult;
    .locals 3

    .prologue
    .line 147
    :try_start_0
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/api/b;->b()Lcom/ushaqi/zhuishushenqi/api/ApiService;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, p1, v1

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/user/H;->a:Lcom/ushaqi/zhuishushenqi/ui/user/PayAccountActivity;

    invoke-static {v2}, Lcom/ushaqi/zhuishushenqi/ui/user/PayAccountActivity;->a(Lcom/ushaqi/zhuishushenqi/ui/user/PayAccountActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/PayResult;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 151
    :goto_0
    return-object v0

    .line 148
    :catch_0
    move-exception v0

    .line 149
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 151
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 139
    check-cast p1, [Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/user/H;->a([Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/PayResult;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 139
    check-cast p1, Lcom/ushaqi/zhuishushenqi/model/PayResult;

    .line 1156
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/PayResult;->getChargeOrder()Lcom/ushaqi/zhuishushenqi/model/PayChargeRecord$Order;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/PayResult;->getChargeOrder()Lcom/ushaqi/zhuishushenqi/model/PayChargeRecord$Order;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/PayChargeRecord$Order;->isCompleted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1157
    new-instance v0, Lcom/ushaqi/zhuishushenqi/ui/user/I;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/user/H;->a:Lcom/ushaqi/zhuishushenqi/ui/user/PayAccountActivity;

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/user/H;->a:Lcom/ushaqi/zhuishushenqi/ui/user/PayAccountActivity;

    const-string v3, "\u6b63\u5728\u66f4\u65b0\u8d44\u4ea7\u4fe1\u606f..."

    invoke-direct {v0, v1, v2, v3}, Lcom/ushaqi/zhuishushenqi/ui/user/I;-><init>(Lcom/ushaqi/zhuishushenqi/ui/user/PayAccountActivity;Landroid/app/Activity;Ljava/lang/String;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/ui/user/H;->a:Lcom/ushaqi/zhuishushenqi/ui/user/PayAccountActivity;

    invoke-static {v3}, Lcom/ushaqi/zhuishushenqi/ui/user/PayAccountActivity;->a(Lcom/ushaqi/zhuishushenqi/ui/user/PayAccountActivity;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/user/I;->b([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_0
    return-void

    .line 1159
    :cond_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/H;->a:Lcom/ushaqi/zhuishushenqi/ui/user/PayAccountActivity;

    const-string v1, "\u672a\u67e5\u5230\u652f\u4ed8\u7ed3\u679c\uff0c\u8bf7\u7a0d\u5019\u66f4\u65b0"

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0
.end method
