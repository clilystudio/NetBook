.class final Lcom/ushaqi/zhuishushenqi/ui/ba;
.super Lcom/ushaqi/zhuishushenqi/a/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ushaqi/zhuishushenqi/a/c",
        "<",
        "Ljava/lang/String;",
        "Lcom/ushaqi/zhuishushenqi/model/BookAdd;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/CustomSearchActivity;


# direct methods
.method public constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/CustomSearchActivity;Landroid/app/Activity;I)V
    .locals 1

    .prologue
    .line 85
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/ba;->a:Lcom/ushaqi/zhuishushenqi/ui/CustomSearchActivity;

    .line 86
    const v0, 0x7f0500d4

    invoke-direct {p0, p2, v0}, Lcom/ushaqi/zhuishushenqi/a/c;-><init>(Landroid/app/Activity;I)V

    .line 87
    return-void
.end method

.method private varargs a([Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/BookAdd;
    .locals 4

    .prologue
    .line 92
    :try_start_0
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/api/b;->b()Lcom/ushaqi/zhuishushenqi/api/ApiService;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, p1, v1

    const/4 v2, 0x1

    aget-object v2, p1, v2

    const/4 v3, 0x2

    aget-object v3, p1, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/BookAdd;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 96
    :goto_0
    return-object v0

    .line 93
    :catch_0
    move-exception v0

    .line 94
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 96
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 83
    check-cast p1, [Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/ba;->a([Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/BookAdd;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 83
    check-cast p1, Lcom/ushaqi/zhuishushenqi/model/BookAdd;

    .line 1102
    if-eqz p1, :cond_3

    .line 1104
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/BookAdd;->isOk()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1105
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/BookAdd;->getBook()Ljava/lang/String;

    move-result-object v0

    .line 1106
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/ba;->a:Lcom/ushaqi/zhuishushenqi/ui/CustomSearchActivity;

    invoke-static {v1, v0}, Lcom/ushaqi/zhuishushenqi/ui/BookInfoActivity;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 1107
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/ba;->a:Lcom/ushaqi/zhuishushenqi/ui/CustomSearchActivity;

    invoke-virtual {v1, v0}, Lcom/ushaqi/zhuishushenqi/ui/CustomSearchActivity;->startActivity(Landroid/content/Intent;)V

    .line 1114
    :cond_0
    :goto_0
    return-void

    .line 1111
    :cond_1
    const-string v0, "EXISTS"

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/BookAdd;->getCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1112
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ba;->a:Lcom/ushaqi/zhuishushenqi/ui/CustomSearchActivity;

    const-string v1, "\u8be5\u4e66\u5df2\u5b58\u5728"

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0

    .line 1113
    :cond_2
    const-string v0, "NOTFOUND"

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/BookAdd;->getCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1114
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ba;->a:Lcom/ushaqi/zhuishushenqi/ui/CustomSearchActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/CustomSearchActivity;->b(Lcom/ushaqi/zhuishushenqi/ui/CustomSearchActivity;)V

    goto :goto_0

    .line 1120
    :cond_3
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ba;->a:Lcom/ushaqi/zhuishushenqi/ui/CustomSearchActivity;

    const-string v1, "\u641c\u7d22\u5931\u8d25\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u6216\u7a0d\u540e\u518d\u8bd5"

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0
.end method
