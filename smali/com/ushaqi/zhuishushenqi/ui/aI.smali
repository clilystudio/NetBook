.class final Lcom/ushaqi/zhuishushenqi/ui/aI;
.super Lcom/ushaqi/zhuishushenqi/a/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ushaqi/zhuishushenqi/a/e",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Lcom/ushaqi/zhuishushenqi/model/BookInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/BookInfoActivity;


# direct methods
.method private constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/BookInfoActivity;)V
    .locals 0

    .prologue
    .line 559
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/aI;->a:Lcom/ushaqi/zhuishushenqi/ui/BookInfoActivity;

    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/a/e;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/BookInfoActivity;B)V
    .locals 0

    .prologue
    .line 559
    invoke-direct {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/aI;-><init>(Lcom/ushaqi/zhuishushenqi/ui/BookInfoActivity;)V

    return-void
.end method

.method private varargs a([Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/BookInfo;
    .locals 2

    .prologue
    .line 564
    :try_start_0
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/api/b;->b()Lcom/ushaqi/zhuishushenqi/api/ApiService;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->r(Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/BookInfo;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 568
    :goto_0
    return-object v0

    .line 565
    :catch_0
    move-exception v0

    .line 566
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 568
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 559
    check-cast p1, [Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/aI;->a([Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/BookInfo;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 559
    check-cast p1, Lcom/ushaqi/zhuishushenqi/model/BookInfo;

    .line 1573
    invoke-super {p0, p1}, Lcom/ushaqi/zhuishushenqi/a/e;->onPostExecute(Ljava/lang/Object;)V

    .line 1574
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/aI;->a:Lcom/ushaqi/zhuishushenqi/ui/BookInfoActivity;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/BookInfoActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1577
    if-eqz p1, :cond_1

    .line 1578
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/aI;->a:Lcom/ushaqi/zhuishushenqi/ui/BookInfoActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/BookInfoActivity;->b(Lcom/ushaqi/zhuishushenqi/ui/BookInfoActivity;I)V

    .line 1579
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/aI;->a:Lcom/ushaqi/zhuishushenqi/ui/BookInfoActivity;

    invoke-static {v0, p1}, Lcom/ushaqi/zhuishushenqi/ui/BookInfoActivity;->a(Lcom/ushaqi/zhuishushenqi/ui/BookInfoActivity;Lcom/ushaqi/zhuishushenqi/model/BookInfo;)Lcom/ushaqi/zhuishushenqi/model/BookInfo;

    .line 1580
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/aI;->a:Lcom/ushaqi/zhuishushenqi/ui/BookInfoActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/BookInfoActivity;->d(Lcom/ushaqi/zhuishushenqi/ui/BookInfoActivity;)V

    .line 1581
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/aI;->a:Lcom/ushaqi/zhuishushenqi/ui/BookInfoActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/BookInfoActivity;->e(Lcom/ushaqi/zhuishushenqi/ui/BookInfoActivity;)V

    .line 1582
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/aI;->a:Lcom/ushaqi/zhuishushenqi/ui/BookInfoActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/BookInfoActivity;->f(Lcom/ushaqi/zhuishushenqi/ui/BookInfoActivity;)V

    .line 1583
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/aI;->a:Lcom/ushaqi/zhuishushenqi/ui/BookInfoActivity;

    invoke-static {v0, p1}, Lcom/arcsoft/hpay100/a/a;->a(Landroid/content/Context;Lcom/ushaqi/zhuishushenqi/model/BookInfo;)V

    :cond_0
    :goto_0
    return-void

    .line 1585
    :cond_1
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/aI;->a:Lcom/ushaqi/zhuishushenqi/ui/BookInfoActivity;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/BookInfoActivity;->b(Lcom/ushaqi/zhuishushenqi/ui/BookInfoActivity;I)V

    goto :goto_0
.end method
