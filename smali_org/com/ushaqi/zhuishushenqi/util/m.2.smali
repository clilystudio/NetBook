.class public final Lcom/ushaqi/zhuishushenqi/util/m;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;

.field private e:Z

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/util/m;->a:Landroid/app/Activity;

    .line 48
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/event/i;->a()Lcom/squareup/a/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/squareup/a/b;->a(Ljava/lang/Object;)V

    .line 49
    return-void
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/util/m;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/util/m;->a:Landroid/app/Activity;

    return-object v0
.end method

.method private a(I)V
    .locals 8

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 151
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/MyApplication;->a()Lcom/ushaqi/zhuishushenqi/MyApplication;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ushaqi/zhuishushenqi/MyApplication;->a(I)V

    .line 154
    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/util/m;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/util/m;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/util/m;->c:Ljava/lang/String;

    const-string v3, "MIX_TOC_ID"

    invoke-static/range {v0 .. v5}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    .line 156
    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/util/m;->a(Landroid/content/Intent;)V

    .line 1205
    :goto_0
    return-void

    .line 159
    :cond_0
    if-eqz p1, :cond_1

    if-eq p1, v2, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 160
    :cond_1
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/util/m;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/util/m;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/util/m;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2, p1}, Lcom/ushaqi/zhuishushenqi/reader/ReaderResActivity;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    .line 161
    const-string v1, "SELECT_LAST"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 162
    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/util/m;->a(Landroid/content/Intent;)V

    goto :goto_0

    .line 163
    :cond_2
    const/16 v0, 0xa

    if-ne p1, v0, :cond_3

    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/util/m;->d:Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;

    if-eqz v0, :cond_3

    .line 164
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/util/m;->d:Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->getTocId()Ljava/lang/String;

    move-result-object v3

    .line 165
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/util/m;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/util/m;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/util/m;->c:Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    .line 166
    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/util/m;->a(Landroid/content/Intent;)V

    goto :goto_0

    .line 169
    :cond_3
    const/16 v0, 0x9

    if-ne p1, v0, :cond_7

    .line 170
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/util/m;->d:Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;

    if-eqz v0, :cond_4

    .line 171
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/util/m;->d:Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->getTocId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/util/m;->f:Ljava/lang/String;

    .line 173
    :cond_4
    invoke-static {}, Landroid/support/design/widget/am;->e()Lcom/ushaqi/zhuishushenqi/model/Account;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 174
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/util/m;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/arcsoft/hpay100/a/a;->M(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v6

    .line 175
    if-nez v6, :cond_5

    .line 176
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 178
    :cond_5
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/util/m;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/util/m;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/util/m;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/util/m;->f:Ljava/lang/String;

    iget-boolean v7, p0, Lcom/ushaqi/zhuishushenqi/util/m;->e:Z

    invoke-static/range {v0 .. v7}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/HashMap;Z)Landroid/content/Intent;

    move-result-object v0

    .line 179
    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/util/m;->a(Landroid/content/Intent;)V

    goto :goto_0

    .line 181
    :cond_6
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/util/m;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/util/m;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/util/m;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/util/m;->f:Ljava/lang/String;

    iget-boolean v6, p0, Lcom/ushaqi/zhuishushenqi/util/m;->e:Z

    invoke-static/range {v0 .. v6}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Landroid/content/Intent;

    move-result-object v0

    .line 182
    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/util/m;->a(Landroid/content/Intent;)V

    goto :goto_0

    .line 1192
    :cond_7
    invoke-static {p1}, Lcom/arcsoft/hpay100/a/a;->g(I)Ljava/lang/String;

    move-result-object v6

    .line 1193
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/util/m;->b:Ljava/lang/String;

    invoke-static {v0, v6}, Lcom/ushaqi/zhuishushenqi/db/SourceRecord;->get(Ljava/lang/String;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/db/SourceRecord;

    move-result-object v0

    .line 1194
    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/db/SourceRecord;->getSourceId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_9

    .line 1195
    :cond_8
    invoke-direct {p0, v2}, Lcom/ushaqi/zhuishushenqi/util/m;->a(Z)V

    goto/16 :goto_0

    .line 1198
    :cond_9
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/db/SourceRecord;->getSourceId()Ljava/lang/String;

    move-result-object v7

    .line 1202
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/util/m;->b:Ljava/lang/String;

    invoke-static {v0, p1, v7, v4}, Lcom/arcsoft/hpay100/a/a;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1203
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/util/m;->a:Landroid/app/Activity;

    invoke-static {v0, v6, v5}, Lcom/arcsoft/hpay100/a/a;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    .line 1204
    if-eqz v0, :cond_a

    .line 1215
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/util/m;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/util/m;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/util/m;->c:Ljava/lang/String;

    move-object v4, v6

    invoke-static/range {v0 .. v5}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    .line 1216
    const-string v1, "SOURCE_ID"

    invoke-virtual {v0, v1, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1217
    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/util/m;->a(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1224
    :cond_a
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/util/m;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/util/m;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/util/m;->c:Ljava/lang/String;

    move-object v4, v7

    move v5, p1

    invoke-static/range {v0 .. v5}, Lcom/ushaqi/zhuishushenqi/reader/ReaderWebActivity;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    .line 1225
    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/util/m;->a(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method

.method private a(Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 229
    const-string v0, "extra_force_online"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 230
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/util/m;->a:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 231
    return-void
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/util/m;I)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/ushaqi/zhuishushenqi/util/m;->a(I)V

    return-void
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/util/m;Ljava/util/List;)V
    .locals 7

    .prologue
    const/16 v6, 0x9

    const/4 v1, 0x1

    .line 34
    .line 1277
    const/4 v2, 0x0

    .line 1278
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/TocSummary;

    .line 1279
    const-string v4, "zhuishuvip"

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/TocSummary;->getSource()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1280
    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/util/m;->d:Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;

    if-eqz v2, :cond_2

    .line 1281
    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/util/m;->d:Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;

    invoke-virtual {v2, v1}, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->setHave_cp(I)V

    .line 1282
    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/util/m;->d:Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/TocSummary;->get_id()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->setTocId(Ljava/lang/String;)V

    .line 1283
    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/util/m;->d:Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;

    invoke-virtual {v2, v6}, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->setReadMode(I)V

    .line 1284
    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/util/m;->d:Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;

    invoke-virtual {v2}, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->save()Ljava/lang/Long;

    .line 1288
    :goto_0
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/TocSummary;->get_id()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/util/m;->f:Ljava/lang/String;

    move v0, v1

    .line 1293
    :goto_1
    if-eqz v0, :cond_1

    .line 1294
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/util/m;->d:Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->getReadMode()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/util/m;->a(I)V

    .line 34
    :cond_1
    return-void

    .line 1286
    :cond_2
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/MyApplication;->a()Lcom/ushaqi/zhuishushenqi/MyApplication;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/ushaqi/zhuishushenqi/MyApplication;->a(I)V

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_1
.end method

.method private a(Z)V
    .locals 4

    .prologue
    .line 147
    new-instance v0, Lcom/ushaqi/zhuishushenqi/util/n;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/util/m;->a:Landroid/app/Activity;

    invoke-direct {v0, p0, v1, p1}, Lcom/ushaqi/zhuishushenqi/util/n;-><init>(Lcom/ushaqi/zhuishushenqi/util/m;Landroid/app/Activity;Z)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/util/m;->b:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/util/n;->b([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 148
    return-void
.end method

.method private a(ZZ)V
    .locals 4

    .prologue
    .line 143
    new-instance v0, Lcom/ushaqi/zhuishushenqi/util/o;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/util/m;->a:Landroid/app/Activity;

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/ushaqi/zhuishushenqi/util/o;-><init>(Lcom/ushaqi/zhuishushenqi/util/m;Landroid/app/Activity;ZZ)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/util/m;->b:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/util/o;->b([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 144
    return-void
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/util/m;Z)Z
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/util/m;->e:Z

    return v0
.end method

.method static synthetic b(Lcom/ushaqi/zhuishushenqi/util/m;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/util/m;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/ushaqi/zhuishushenqi/util/m;Ljava/util/List;)V
    .locals 5

    .prologue
    const/16 v4, 0x9

    .line 34
    .line 1304
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/TocSummary;

    .line 1305
    const-string v2, "zhuishuvip"

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/TocSummary;->getSource()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1306
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/MyApplication;->a()Lcom/ushaqi/zhuishushenqi/MyApplication;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/ushaqi/zhuishushenqi/MyApplication;->a(I)V

    .line 1307
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/TocSummary;->get_id()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/util/m;->f:Ljava/lang/String;

    .line 1308
    invoke-direct {p0, v4}, Lcom/ushaqi/zhuishushenqi/util/m;->a(I)V

    .line 1309
    :cond_1
    return-void
.end method

.method static synthetic c(Lcom/ushaqi/zhuishushenqi/util/m;)Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/util/m;->d:Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;)V
    .locals 9

    .prologue
    const/4 v8, -0x1

    const/4 v0, 0x5

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 55
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/util/m;->d:Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;

    .line 56
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->getBookId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ushaqi/zhuishushenqi/util/m;->b:Ljava/lang/String;

    .line 57
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->getTitle()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ushaqi/zhuishushenqi/util/m;->c:Ljava/lang/String;

    .line 58
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->getReadMode()I

    move-result v1

    .line 65
    iget v4, p1, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->have_cp:I

    if-ne v4, v3, :cond_1

    .line 67
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->getTocId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 68
    invoke-direct {p0, v3, v3}, Lcom/ushaqi/zhuishushenqi/util/m;->a(ZZ)V

    .line 87
    :goto_0
    return-void

    .line 70
    :cond_0
    invoke-direct {p0, v1}, Lcom/ushaqi/zhuishushenqi/util/m;->a(I)V

    goto :goto_0

    .line 1120
    :cond_1
    if-eq v1, v8, :cond_3

    .line 76
    :cond_2
    :goto_1
    if-eqz v2, :cond_6

    .line 77
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/util/m;->a:Landroid/app/Activity;

    const-string v1, "\u6b63\u5728\u83b7\u53d6\u6765\u6e90"

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;Ljava/lang/String;)V

    .line 78
    invoke-direct {p0, v3}, Lcom/ushaqi/zhuishushenqi/util/m;->a(Z)V

    goto :goto_0

    .line 1137
    :cond_3
    iget-object v4, p0, Lcom/ushaqi/zhuishushenqi/util/m;->a:Landroid/app/Activity;

    const-string v5, "PREF_FIRST_LAUNCH_TIME"

    const-wide/16 v6, 0x0

    invoke-static {v4, v5, v6, v7}, Lcom/arcsoft/hpay100/a/a;->c(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v4

    .line 1138
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    .line 1139
    sub-long v4, v6, v4

    const-wide v6, 0x9a7ec800L

    cmp-long v4, v4, v6

    if-ltz v4, :cond_5

    move v4, v3

    .line 1123
    :goto_2
    if-nez v4, :cond_2

    .line 1126
    invoke-static {}, Landroid/support/design/widget/am;->e()Lcom/ushaqi/zhuishushenqi/model/Account;

    move-result-object v4

    .line 1127
    if-eqz v4, :cond_4

    invoke-virtual {v4}, Lcom/ushaqi/zhuishushenqi/model/Account;->getUser()Lcom/ushaqi/zhuishushenqi/model/User;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ushaqi/zhuishushenqi/model/User;->getLv()I

    move-result v4

    if-ge v4, v0, :cond_2

    :cond_4
    move v2, v3

    .line 1130
    goto :goto_1

    :cond_5
    move v4, v2

    .line 1139
    goto :goto_2

    .line 81
    :cond_6
    if-ne v1, v8, :cond_7

    .line 83
    invoke-virtual {p1, v0}, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->setReadMode(I)V

    .line 84
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->save()Ljava/lang/Long;

    .line 86
    :goto_3
    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/util/m;->a(I)V

    goto :goto_0

    :cond_7
    move v0, v1

    goto :goto_3
.end method

.method public final a(Lcom/ushaqi/zhuishushenqi/model/BookInfo;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 93
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/BookInfo;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/util/m;->b:Ljava/lang/String;

    .line 94
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/BookInfo;->getTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/util/m;->c:Ljava/lang/String;

    .line 95
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/BookInfo;->isHasCp()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    invoke-direct {p0, v1, v1}, Lcom/ushaqi/zhuishushenqi/util/m;->a(ZZ)V

    .line 101
    :goto_0
    return-void

    .line 99
    :cond_0
    invoke-direct {p0, v1}, Lcom/ushaqi/zhuishushenqi/util/m;->a(Z)V

    goto :goto_0
.end method
