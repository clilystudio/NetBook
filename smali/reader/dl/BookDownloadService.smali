.class public Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;
.super Landroid/app/Service;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:[Lcom/ushaqi/zhuishushenqi/model/ChapterLink;

.field private h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private i:Landroid/content/Intent;

.field private j:Z

.field private k:Lcom/ushaqi/zhuishushenqi/reader/f;

.field private l:I

.field private m:Ljava/lang/String;

.field private n:I

.field private o:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 47
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 59
    iput-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;->i:Landroid/content/Intent;

    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;->j:Z

    .line 64
    iput-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;->m:Ljava/lang/String;

    .line 504
    return-void
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;->b:Ljava/lang/String;

    return-object p1
.end method

.method private a()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 156
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/db/BookDlRecord;->getAllPending()Ljava/util/List;

    move-result-object v0

    .line 157
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 158
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/db/BookDlRecord;

    .line 1169
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/db/BookDlRecord;->getBookId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;->a:Ljava/lang/String;

    .line 1170
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;->a:Ljava/lang/String;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->getOnShelf(Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;

    move-result-object v1

    .line 1171
    if-nez v1, :cond_0

    .line 1172
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;->g()V

    .line 163
    :goto_0
    return-void

    .line 1175
    :cond_0
    const/4 v2, 0x5

    invoke-static {v0, v2}, Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;->a(Lcom/ushaqi/zhuishushenqi/db/BookDlRecord;I)V

    .line 1177
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/db/BookDlRecord;->getTocId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;->b:Ljava/lang/String;

    .line 1178
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/db/BookDlRecord;->getMode()I

    move-result v2

    iput v2, p0, Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;->c:I

    .line 1179
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/db/BookDlRecord;->getStart()I

    move-result v2

    iput v2, p0, Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;->d:I

    .line 1180
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/db/BookDlRecord;->getTotal()I

    move-result v0

    iput v0, p0, Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;->e:I

    .line 1182
    iput v3, p0, Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;->l:I

    .line 1183
    iput v3, p0, Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;->f:I

    .line 1184
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/MyApplication;->a()Lcom/ushaqi/zhuishushenqi/MyApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/MyApplication;->e()Ljava/util/Map;

    move-result-object v0

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;->a:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ushaqi/zhuishushenqi/model/ChapterLink;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;->g:[Lcom/ushaqi/zhuishushenqi/model/ChapterLink;

    .line 1185
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;->g:[Lcom/ushaqi/zhuishushenqi/model/ChapterLink;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;->e:I

    if-lez v0, :cond_1

    .line 1186
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;->b()V

    goto :goto_0

    .line 1188
    :cond_1
    invoke-direct {p0, v1}, Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;->a(Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;)V

    goto :goto_0

    .line 1450
    :cond_2
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;->stopSelf()V

    goto :goto_0
.end method

.method private a(I)V
    .locals 1

    .prologue
    .line 458
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/db/BookDlRecord;->get(Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/db/BookDlRecord;

    move-result-object v0

    .line 459
    invoke-static {v0, p1}, Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;->a(Lcom/ushaqi/zhuishushenqi/db/BookDlRecord;I)V

    .line 460
    return-void
.end method

.method private static a(Lcom/ushaqi/zhuishushenqi/db/BookDlRecord;I)V
    .locals 2

    .prologue
    .line 463
    if-eqz p0, :cond_0

    .line 464
    invoke-virtual {p0, p1}, Lcom/ushaqi/zhuishushenqi/db/BookDlRecord;->setStatus(I)V

    .line 465
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/db/BookDlRecord;->save()Ljava/lang/Long;

    .line 467
    :cond_0
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/event/i;->a()Lcom/squareup/a/b;

    move-result-object v0

    new-instance v1, Lcom/ushaqi/zhuishushenqi/event/I;

    invoke-direct {v1}, Lcom/ushaqi/zhuishushenqi/event/I;-><init>()V

    invoke-virtual {v0, v1}, Lcom/squareup/a/b;->c(Ljava/lang/Object;)V

    .line 468
    return-void
.end method

.method private a(Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;)V
    .locals 6

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 243
    new-instance v1, Lcom/ushaqi/zhuishushenqi/reader/f;

    invoke-direct {v1, p1}, Lcom/ushaqi/zhuishushenqi/reader/f;-><init>(Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;)V

    iput-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;->k:Lcom/ushaqi/zhuishushenqi/reader/f;

    .line 244
    iget v1, p0, Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;->c:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 245
    new-instance v0, Lcom/ushaqi/zhuishushenqi/reader/dl/f;

    invoke-direct {v0, p0, v5}, Lcom/ushaqi/zhuishushenqi/reader/dl/f;-><init>(Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;B)V

    new-array v1, v3, [Ljava/lang/String;

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;->a:Ljava/lang/String;

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/reader/dl/f;->b([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 263
    :goto_0
    return-void

    .line 250
    :cond_0
    iget v1, p0, Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;->c:I

    invoke-static {v1}, Lcom/arcsoft/hpay100/a/a;->h(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 251
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;->c:I

    invoke-static {v0}, Lcom/arcsoft/hpay100/a/a;->g(I)Ljava/lang/String;

    move-result-object v1

    .line 252
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/db/SourceRecord;->get(Ljava/lang/String;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/db/SourceRecord;

    move-result-object v0

    .line 253
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/db/SourceRecord;->getSourceId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    .line 254
    :cond_1
    new-instance v0, Lcom/ushaqi/zhuishushenqi/reader/dl/f;

    invoke-direct {v0, p0, v5}, Lcom/ushaqi/zhuishushenqi/reader/dl/f;-><init>(Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;B)V

    new-array v1, v3, [Ljava/lang/String;

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;->a:Ljava/lang/String;

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/reader/dl/f;->b([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 257
    :cond_2
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/db/SourceRecord;->getSourceId()Ljava/lang/String;

    move-result-object v0

    .line 260
    :goto_1
    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;->a:Ljava/lang/String;

    iget v3, p0, Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;->c:I

    iget-object v4, p0, Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;->b:Ljava/lang/String;

    invoke-static {v2, v3, v0, v4}, Lcom/arcsoft/hpay100/a/a;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;->b:Ljava/lang/String;

    .line 261
    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;->k:Lcom/ushaqi/zhuishushenqi/reader/f;

    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;->b:Ljava/lang/String;

    invoke-virtual {v2, v3, v1, v0}, Lcom/ushaqi/zhuishushenqi/reader/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    new-instance v0, Lcom/ushaqi/zhuishushenqi/reader/dl/g;

    invoke-direct {v0, p0, v5}, Lcom/ushaqi/zhuishushenqi/reader/dl/g;-><init>(Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;B)V

    new-array v1, v5, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/reader/dl/g;->b([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    :cond_3
    move-object v1, v0

    goto :goto_1
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;I)V
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;->a(I)V

    return-void
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;->a(Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;)V

    return-void
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;)Z
    .locals 1

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;->o:Z

    return v0
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;Z)Z
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;->j:Z

    return v0
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;[Lcom/ushaqi/zhuishushenqi/model/ChapterLink;)[Lcom/ushaqi/zhuishushenqi/model/ChapterLink;
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;->g:[Lcom/ushaqi/zhuishushenqi/model/ChapterLink;

    return-object p1
.end method

.method static synthetic b(Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;I)I
    .locals 0

    .prologue
    .line 47
    iput p1, p0, Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;->n:I

    return p1
.end method

.method static synthetic b(Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;)Landroid/content/Intent;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;->i:Landroid/content/Intent;

    return-object v0
.end method

.method private b()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    .line 209
    const/4 v0, 0x0

    .line 210
    new-instance v1, Lcom/ushaqi/zhuishushenqi/reader/f;

    iget v2, p0, Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;->c:I

    invoke-direct {v1, v2}, Lcom/ushaqi/zhuishushenqi/reader/f;-><init>(I)V

    iput-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;->k:Lcom/ushaqi/zhuishushenqi/reader/f;

    .line 211
    iget v1, p0, Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;->c:I

    invoke-static {v1}, Lcom/arcsoft/hpay100/a/a;->h(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 212
    iget v1, p0, Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;->c:I

    invoke-static {v1}, Lcom/arcsoft/hpay100/a/a;->g(I)Ljava/lang/String;

    move-result-object v1

    .line 213
    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;->a:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/ushaqi/zhuishushenqi/db/SourceRecord;->get(Ljava/lang/String;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/db/SourceRecord;

    move-result-object v1

    .line 214
    if-eqz v1, :cond_0

    .line 215
    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/db/SourceRecord;->getSourceId()Ljava/lang/String;

    move-result-object v0

    .line 216
    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/db/SourceRecord;->getSogouMd()Ljava/lang/String;

    move-result-object v1

    .line 217
    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;->k:Lcom/ushaqi/zhuishushenqi/reader/f;

    invoke-virtual {v2, v0, v1}, Lcom/ushaqi/zhuishushenqi/reader/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    :cond_0
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;->a:Ljava/lang/String;

    iget v2, p0, Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;->c:I

    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;->b:Ljava/lang/String;

    invoke-static {v1, v2, v0, v3}, Lcom/arcsoft/hpay100/a/a;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;->b:Ljava/lang/String;

    .line 221
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;->k:Lcom/ushaqi/zhuishushenqi/reader/f;

    sget-object v1, Lcom/ushaqi/zhuishushenqi/util/I;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/reader/f;->b(Ljava/lang/String;)V

    .line 222
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;->k:Lcom/ushaqi/zhuishushenqi/reader/f;

    sget-object v1, Lcom/ushaqi/zhuishushenqi/util/I;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/reader/f;->a(Ljava/lang/String;)V

    .line 223
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;->k:Lcom/ushaqi/zhuishushenqi/reader/f;

    sget v1, Lcom/ushaqi/zhuishushenqi/util/I;->g:I

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/reader/f;->a(I)V

    .line 226
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;->i:Landroid/content/Intent;

    const-string v1, "SerDlStopFlag"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 227
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/arcsoft/hpay100/a/a;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;->h:Ljava/util/ArrayList;

    .line 230
    invoke-static {}, Lcom/arcsoft/hpay100/a/a;->e()J

    move-result-wide v0

    .line 231
    iget v2, p0, Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;->e:I

    mul-int/lit8 v2, v2, 0xa

    shl-int/lit8 v2, v2, 0x1

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1

    .line 232
    const-string v0, "SD\u5361\u5269\u4f59\u5bb9\u91cf\u4e0d\u8db3\uff0c\u8bf7\u51cf\u5c11\u7f13\u5b58\u6570\u76ee\u6216\u589e\u52a0\u5b58\u50a8"

    invoke-static {p0, v0}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 233
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;->stopSelf()V

    .line 237
    :goto_0
    return-void

    .line 2196
    :cond_1
    invoke-direct {p0, v4}, Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;->a(I)V

    .line 2197
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/event/i;->a()Lcom/squareup/a/b;

    move-result-object v0

    new-instance v1, Lcom/ushaqi/zhuishushenqi/event/d;

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;->a:Ljava/lang/String;

    invoke-direct {v1, v2, v4}, Lcom/ushaqi/zhuishushenqi/event/d;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcom/squareup/a/b;->c(Ljava/lang/Object;)V

    .line 2198
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;->c()V

    goto :goto_0
.end method

.method static synthetic b(Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;Z)Z
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;->o:Z

    return v0
.end method

.method static synthetic c(Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;I)I
    .locals 0

    .prologue
    .line 47
    iput p1, p0, Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;->l:I

    return p1
.end method

.method private c()V
    .locals 4

    .prologue
    .line 269
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;->j:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;->g:[Lcom/ushaqi/zhuishushenqi/model/ChapterLink;

    if-nez v0, :cond_1

    .line 300
    :cond_0
    :goto_0
    return-void

    .line 273
    :cond_1
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;->d:I

    iget v1, p0, Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;->f:I

    add-int v3, v0, v1

    .line 274
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;->g:[Lcom/ushaqi/zhuishushenqi/model/ChapterLink;

    array-length v0, v0

    if-ge v3, v0, :cond_5

    iget v0, p0, Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;->f:I

    iget v1, p0, Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;->e:I

    if-gt v0, v1, :cond_5

    .line 277
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;->g:[Lcom/ushaqi/zhuishushenqi/model/ChapterLink;

    aget-object v0, v0, v3

    .line 278
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/ChapterLink;->getUnreadble()Z

    move-result v2

    .line 279
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/ChapterLink;->getLink()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/support/design/widget/am;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 281
    :goto_1
    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;->h:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 282
    :cond_2
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;->f:I

    .line 283
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;->d:I

    iget v1, p0, Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;->f:I

    add-int v3, v0, v1

    .line 284
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;->g:[Lcom/ushaqi/zhuishushenqi/model/ChapterLink;

    array-length v0, v0

    if-ge v3, v0, :cond_3

    .line 285
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;->g:[Lcom/ushaqi/zhuishushenqi/model/ChapterLink;

    aget-object v0, v0, v3

    .line 286
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/ChapterLink;->getUnreadble()Z

    move-result v2

    .line 287
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/ChapterLink;->getLink()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/support/design/widget/am;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 289
    :cond_3
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;->e()V

    goto :goto_0

    .line 294
    :cond_4
    new-instance v1, Lcom/ushaqi/zhuishushenqi/reader/dl/e;

    invoke-direct {v1, p0, v0, v3}, Lcom/ushaqi/zhuishushenqi/reader/dl/e;-><init>(Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;Lcom/ushaqi/zhuishushenqi/model/ChapterLink;I)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {v1, v0}, Lcom/ushaqi/zhuishushenqi/reader/dl/e;->b([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 298
    :cond_5
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;->e()V

    goto :goto_0
.end method

.method static synthetic c(Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;->h()V

    return-void
.end method

.method static synthetic d(Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;I)I
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x5

    iput v0, p0, Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;->c:I

    return v0
.end method

.method static synthetic d(Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;->a:Ljava/lang/String;

    return-object v0
.end method

.method private d()V
    .locals 3

    .prologue
    .line 411
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;->i:Landroid/content/Intent;

    const-string v1, "SerDlStopFlag"

    const/4 v2, -0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 412
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;->h()V

    .line 2205
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;->a(I)V

    .line 416
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;->a()V

    .line 418
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/event/i;->a()Lcom/squareup/a/b;

    move-result-object v0

    new-instance v1, Lcom/ushaqi/zhuishushenqi/event/I;

    invoke-direct {v1}, Lcom/ushaqi/zhuishushenqi/event/I;-><init>()V

    invoke-virtual {v0, v1}, Lcom/squareup/a/b;->c(Ljava/lang/Object;)V

    .line 419
    return-void
.end method

.method static synthetic e(Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;I)I
    .locals 0

    .prologue
    .line 47
    iput p1, p0, Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;->e:I

    return p1
.end method

.method private e()V
    .locals 4

    .prologue
    .line 425
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;->i:Landroid/content/Intent;

    const-string v1, "SerDlStopFlag"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 426
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;->h()V

    .line 427
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/event/i;->a()Lcom/squareup/a/b;

    move-result-object v0

    new-instance v1, Lcom/ushaqi/zhuishushenqi/event/d;

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;->a:Ljava/lang/String;

    const/4 v3, 0x4

    invoke-direct {v1, v2, v3}, Lcom/ushaqi/zhuishushenqi/event/d;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcom/squareup/a/b;->c(Ljava/lang/Object;)V

    .line 428
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;->f()V

    .line 429
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;->a()V

    .line 430
    return-void
.end method

.method static synthetic e(Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;->c()V

    return-void
.end method

.method static synthetic f(Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;)Lcom/ushaqi/zhuishushenqi/reader/f;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;->k:Lcom/ushaqi/zhuishushenqi/reader/f;

    return-object v0
.end method

.method private f()V
    .locals 2

    .prologue
    .line 433
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/MyApplication;->a()Lcom/ushaqi/zhuishushenqi/MyApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/MyApplication;->e()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 434
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/MyApplication;->a()Lcom/ushaqi/zhuishushenqi/MyApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/MyApplication;->f()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 435
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/db/BookDlRecord;->delete(Ljava/lang/String;)V

    .line 436
    return-void
.end method

.method static synthetic f(Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;I)V
    .locals 1

    .prologue
    .line 47
    .line 3528
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/db/BookDlRecord;->get(Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/db/BookDlRecord;

    move-result-object v0

    .line 3529
    if-eqz v0, :cond_0

    .line 3530
    invoke-virtual {v0, p1}, Lcom/ushaqi/zhuishushenqi/db/BookDlRecord;->setTotal(I)V

    .line 3531
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/db/BookDlRecord;->save()Ljava/lang/Long;

    .line 47
    :cond_0
    return-void
.end method

.method static synthetic g(Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;)I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;->f:I

    return v0
.end method

.method private g()V
    .locals 0

    .prologue
    .line 442
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;->f()V

    .line 443
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;->a()V

    .line 444
    return-void
.end method

.method static synthetic h(Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;)I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;->e:I

    return v0
.end method

.method private h()V
    .locals 2

    .prologue
    .line 454
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;->i:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 455
    return-void
.end method

.method static synthetic i(Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;)I
    .locals 2

    .prologue
    .line 47
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;->f:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;->f:I

    return v0
.end method

.method static synthetic j(Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;)I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;->n:I

    return v0
.end method

.method static synthetic k(Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;)V
    .locals 3

    .prologue
    .line 47
    .line 2382
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;->i:Landroid/content/Intent;

    const-string v1, "SerDlStopFlag"

    const/4 v2, -0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2383
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;->h()V

    .line 3205
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;->a(I)V

    .line 2385
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;->o:Z

    .line 47
    return-void
.end method

.method static synthetic l(Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;)V
    .locals 4

    .prologue
    .line 47
    .line 3392
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;->a:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 3393
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->get(Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;

    move-result-object v0

    .line 3394
    if-eqz v0, :cond_2

    .line 3395
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->getReadMode()I

    move-result v1

    invoke-static {v1}, Lcom/arcsoft/hpay100/a/a;->g(I)Ljava/lang/String;

    move-result-object v1

    .line 3396
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->getDownloadedSource()Ljava/lang/String;

    move-result-object v2

    .line 3397
    if-eqz v2, :cond_0

    invoke-virtual {v2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 3398
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3399
    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->setDownloadedSource(Ljava/lang/String;)V

    .line 3400
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->save()Ljava/lang/Long;

    .line 3402
    :cond_1
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;->m:Ljava/lang/String;

    .line 47
    :cond_2
    return-void
.end method

.method static synthetic m(Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic n(Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;)I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;->l:I

    return v0
.end method

.method static synthetic o(Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;->g()V

    return-void
.end method

.method static synthetic p(Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;)[Lcom/ushaqi/zhuishushenqi/model/ChapterLink;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;->g:[Lcom/ushaqi/zhuishushenqi/model/ChapterLink;

    return-object v0
.end method

.method static synthetic q(Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;->b()V

    return-void
.end method

.method static synthetic r(Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;->d()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 114
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 73
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 75
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/event/i;->a()Lcom/squareup/a/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/squareup/a/b;->a(Ljava/lang/Object;)V

    .line 76
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.ushaqi.zhuishushenqi.dlReceiver"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;->i:Landroid/content/Intent;

    .line 78
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 79
    const-string v1, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 80
    const-string v1, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 81
    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 82
    const-string v1, "android.net.wifi.supplicant.CONNECTION_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 83
    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 84
    const-string v1, "android.net.wifi.PICK_WIFI_NETWORK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 85
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 87
    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 88
    new-instance v1, Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService$MyNetworkMonitor;

    invoke-direct {v1, p0}, Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService$MyNetworkMonitor;-><init>(Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;)V

    invoke-virtual {p0, v1, v0}, Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 90
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;->a()V

    .line 91
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 138
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;->j:Z

    .line 139
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/event/i;->a()Lcom/squareup/a/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/squareup/a/b;->b(Ljava/lang/Object;)V

    .line 140
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 141
    return-void
.end method

.method public onDownloadStatus(Lcom/ushaqi/zhuishushenqi/event/d;)V
    .locals 1
    .annotation runtime Lcom/squareup/a/l;
    .end annotation

    .prologue
    .line 145
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/event/d;->a()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 150
    :goto_0
    return-void

    .line 147
    :pswitch_0
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;->d()V

    goto :goto_0

    .line 145
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2

    .prologue
    .line 122
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 123
    const-string v1, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 124
    const-string v1, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 125
    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 126
    const-string v1, "android.net.wifi.supplicant.CONNECTION_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 127
    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 128
    const-string v1, "android.net.wifi.PICK_WIFI_NETWORK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 129
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 131
    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 132
    new-instance v1, Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService$MyNetworkMonitor;

    invoke-direct {v1, p0}, Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService$MyNetworkMonitor;-><init>(Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;)V

    invoke-virtual {p0, v1, v0}, Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 133
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    return v0
.end method
