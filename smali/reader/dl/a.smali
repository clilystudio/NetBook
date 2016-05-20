.class public Lcom/ushaqi/zhuishushenqi/reader/dl/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/reader/dl/a;->a:Landroid/app/Activity;

    .line 33
    return-void
.end method

.method private a(Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;II)V
    .locals 4

    .prologue
    .line 55
    if-nez p1, :cond_0

    .line 56
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/dl/a;->a:Landroid/app/Activity;

    const-string v1, "\u8bf7\u91cd\u8bd5"

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;Ljava/lang/String;)V

    .line 79
    :goto_0
    return-void

    .line 60
    :cond_0
    invoke-static {}, Lcom/arcsoft/hpay100/a/a;->d()Z

    move-result v0

    if-nez v0, :cond_1

    .line 61
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/dl/a;->a:Landroid/app/Activity;

    const-string v1, "\u65e0\u6cd5\u7f13\u5b58\uff0c\u8bf7\u68c0\u67e5SD\u5361\u662f\u5426\u6302\u8f7d"

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0

    .line 64
    :cond_1
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->getReadMode()I

    move-result v0

    .line 65
    invoke-static {v0}, Lcom/arcsoft/hpay100/a/a;->f(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 66
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/dl/a;->a:Landroid/app/Activity;

    const-string v1, "\u6682\u4e0d\u652f\u6301\u5f53\u524d\u6a21\u5f0f\u7f13\u5b58"

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/util/e;->b(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0

    .line 69
    :cond_2
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/dl/a;->a:Landroid/app/Activity;

    invoke-static {v1}, Lcom/arcsoft/hpay100/a/a;->r(Landroid/content/Context;)I

    move-result v1

    if-ne v0, v1, :cond_3

    .line 70
    invoke-direct {p0, p1, p2, p3}, Lcom/ushaqi/zhuishushenqi/reader/dl/a;->b(Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;II)V

    goto :goto_0

    .line 72
    :cond_3
    new-instance v0, Lcom/ushaqi/zhuishushenqi/reader/dl/b;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/ushaqi/zhuishushenqi/reader/dl/b;-><init>(Lcom/ushaqi/zhuishushenqi/reader/dl/a;Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;II)V

    .line 1121
    new-instance v1, Luk/me/lewisdeane/ldialogs/h;

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/reader/dl/a;->a:Landroid/app/Activity;

    invoke-direct {v1, v2}, Luk/me/lewisdeane/ldialogs/h;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0501e0

    invoke-virtual {v1, v2}, Luk/me/lewisdeane/ldialogs/h;->a(I)Luk/me/lewisdeane/ldialogs/h;

    move-result-object v1

    const v2, 0x7f0500e6

    invoke-virtual {v1, v2}, Luk/me/lewisdeane/ldialogs/h;->b(I)Luk/me/lewisdeane/ldialogs/h;

    move-result-object v1

    const v2, 0x7f0500e0

    new-instance v3, Lcom/ushaqi/zhuishushenqi/reader/dl/c;

    invoke-direct {v3, p0, v0}, Lcom/ushaqi/zhuishushenqi/reader/dl/c;-><init>(Lcom/ushaqi/zhuishushenqi/reader/dl/a;Lcom/ushaqi/zhuishushenqi/reader/dl/d;)V

    .line 1122
    invoke-virtual {v1, v2, v3}, Luk/me/lewisdeane/ldialogs/h;->a(ILandroid/content/DialogInterface$OnClickListener;)Luk/me/lewisdeane/ldialogs/h;

    move-result-object v0

    const v1, 0x7f050011

    const/4 v2, 0x0

    .line 1129
    invoke-virtual {v0, v1, v2}, Luk/me/lewisdeane/ldialogs/h;->b(ILandroid/content/DialogInterface$OnClickListener;)Luk/me/lewisdeane/ldialogs/h;

    move-result-object v0

    invoke-virtual {v0}, Luk/me/lewisdeane/ldialogs/h;->b()Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/reader/dl/a;Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;II)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0, p1, p2, p3}, Lcom/ushaqi/zhuishushenqi/reader/dl/a;->b(Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;II)V

    return-void
.end method

.method private b(Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;II)V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 82
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->getBookId()Ljava/lang/String;

    move-result-object v0

    .line 83
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->getReadMode()I

    move-result v4

    .line 86
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/event/i;->a()Lcom/squareup/a/b;

    move-result-object v1

    new-instance v2, Lcom/ushaqi/zhuishushenqi/event/d;

    invoke-direct {v2, v0, v7}, Lcom/ushaqi/zhuishushenqi/event/d;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1, v2}, Lcom/squareup/a/b;->c(Ljava/lang/Object;)V

    .line 87
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/dl/a;->a:Landroid/app/Activity;

    const-string v2, "\u5df2\u52a0\u5165\u7f13\u5b58\u961f\u5217"

    invoke-static {v1, v2}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;Ljava/lang/String;)V

    .line 88
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/MyApplication;->a()Lcom/ushaqi/zhuishushenqi/MyApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/MyApplication;->f()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    if-gez p2, :cond_2

    .line 91
    const/4 v5, 0x0

    .line 93
    :goto_0
    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/db/BookDlRecord;->get(Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/db/BookDlRecord;

    move-result-object v2

    .line 94
    if-nez v2, :cond_0

    .line 95
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->getAuthor()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->getTocId()Ljava/lang/String;

    move-result-object v3

    move v6, p3

    invoke-static/range {v0 .. v7}, Lcom/ushaqi/zhuishushenqi/db/BookDlRecord;->create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIII)V

    .line 104
    :goto_1
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/event/i;->a()Lcom/squareup/a/b;

    move-result-object v0

    new-instance v1, Lcom/ushaqi/zhuishushenqi/event/I;

    invoke-direct {v1}, Lcom/ushaqi/zhuishushenqi/event/I;-><init>()V

    invoke-virtual {v0, v1}, Lcom/squareup/a/b;->c(Ljava/lang/Object;)V

    .line 105
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/dl/a;->a:Landroid/app/Activity;

    const-class v2, Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 106
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/dl/a;->a:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 107
    return-void

    .line 97
    :cond_0
    invoke-virtual {v2}, Lcom/ushaqi/zhuishushenqi/db/BookDlRecord;->getMode()I

    move-result v0

    .line 98
    if-eq v0, v4, :cond_1

    .line 99
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->getTocId()Ljava/lang/String;

    move-result-object v3

    move v6, p3

    invoke-static/range {v2 .. v7}, Lcom/ushaqi/zhuishushenqi/db/BookDlRecord;->update(Lcom/ushaqi/zhuishushenqi/db/BookDlRecord;Ljava/lang/String;IIII)V

    goto :goto_1

    .line 101
    :cond_1
    invoke-static {v2, v5, p3}, Lcom/ushaqi/zhuishushenqi/db/BookDlRecord;->reset(Lcom/ushaqi/zhuishushenqi/db/BookDlRecord;II)V

    goto :goto_1

    :cond_2
    move v5, p2

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 39
    invoke-direct {p0, p1, v0, v0}, Lcom/ushaqi/zhuishushenqi/reader/dl/a;->a(Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;II)V

    .line 40
    return-void
.end method

.method public final a(Ljava/lang/String;II)V
    .locals 1

    .prologue
    .line 50
    invoke-static {p1}, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->get(Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;

    move-result-object v0

    .line 51
    invoke-direct {p0, v0, p2, p3}, Lcom/ushaqi/zhuishushenqi/reader/dl/a;->a(Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;II)V

    .line 52
    return-void
.end method
