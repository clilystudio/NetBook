.class final Lcom/ushaqi/zhuishushenqi/util/n;
.super Lcom/ushaqi/zhuishushenqi/a/a;
.source "SourceFile"


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/util/m;


# direct methods
.method public constructor <init>(Lcom/ushaqi/zhuishushenqi/util/m;Landroid/app/Activity;Z)V
    .locals 0

    .prologue
    .line 319
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/util/n;->a:Lcom/ushaqi/zhuishushenqi/util/m;

    .line 320
    invoke-direct {p0, p2, p3}, Lcom/ushaqi/zhuishushenqi/a/a;-><init>(Landroid/app/Activity;Z)V

    .line 321
    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 2

    .prologue
    .line 348
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/util/n;->a:Lcom/ushaqi/zhuishushenqi/util/m;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/util/m;->a(Lcom/ushaqi/zhuishushenqi/util/m;)Landroid/app/Activity;

    move-result-object v0

    const-string v1, "\u83b7\u53d6\u8d44\u6e90\u7ad9\u5931\u8d25\uff0c\u8bf7\u91cd\u8bd5"

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;Ljava/lang/String;)V

    .line 349
    return-void
.end method

.method protected final a(Lcom/ushaqi/zhuishushenqi/model/TocSourceRoot;)V
    .locals 7

    .prologue
    .line 325
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/util/n;->b()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 344
    :goto_0
    return-void

    .line 328
    :cond_0
    const/4 v1, 0x5

    .line 329
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/TocSourceRoot;->getSources()[Lcom/ushaqi/zhuishushenqi/model/TocSource;

    move-result-object v2

    .line 330
    array-length v3, v2

    const/4 v0, 0x0

    move v6, v0

    move v0, v1

    move v1, v6

    :goto_1
    if-ge v1, v3, :cond_6

    aget-object v4, v2, v1

    .line 331
    iget-object v5, p0, Lcom/ushaqi/zhuishushenqi/util/n;->a:Lcom/ushaqi/zhuishushenqi/util/m;

    invoke-static {v5}, Lcom/ushaqi/zhuishushenqi/util/m;->b(Lcom/ushaqi/zhuishushenqi/util/m;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/arcsoft/hpay100/a/a;->a(Lcom/ushaqi/zhuishushenqi/model/TocSource;Ljava/lang/String;)V

    .line 332
    invoke-virtual {v4}, Lcom/ushaqi/zhuishushenqi/model/TocSource;->isPriority()Z

    move-result v5

    .line 333
    if-eqz v5, :cond_1

    .line 334
    invoke-virtual {v4}, Lcom/ushaqi/zhuishushenqi/model/TocSource;->getSource()Ljava/lang/String;

    move-result-object v0

    .line 1095
    const-string v4, "soso"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1096
    const/4 v0, 0x6

    .line 330
    :cond_1
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1097
    :cond_2
    const-string v4, "sogou"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1098
    const/4 v0, 0x7

    goto :goto_2

    .line 1099
    :cond_3
    const-string v4, "leidian"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1100
    const/16 v0, 0x8

    goto :goto_2

    .line 1101
    :cond_4
    const-string v4, "easou"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1102
    const/4 v0, 0x3

    goto :goto_2

    .line 1104
    :cond_5
    const/4 v0, -0x1

    goto :goto_2

    .line 337
    :cond_6
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/util/n;->a:Lcom/ushaqi/zhuishushenqi/util/m;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/util/m;->c(Lcom/ushaqi/zhuishushenqi/util/m;)Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 338
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/util/n;->a:Lcom/ushaqi/zhuishushenqi/util/m;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/util/m;->c(Lcom/ushaqi/zhuishushenqi/util/m;)Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->setReadMode(I)V

    .line 339
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/util/n;->a:Lcom/ushaqi/zhuishushenqi/util/m;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/util/m;->c(Lcom/ushaqi/zhuishushenqi/util/m;)Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->save()Ljava/lang/Long;

    .line 343
    :goto_3
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/util/n;->a:Lcom/ushaqi/zhuishushenqi/util/m;

    invoke-static {v1, v0}, Lcom/ushaqi/zhuishushenqi/util/m;->a(Lcom/ushaqi/zhuishushenqi/util/m;I)V

    goto :goto_0

    .line 341
    :cond_7
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/MyApplication;->a()Lcom/ushaqi/zhuishushenqi/MyApplication;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ushaqi/zhuishushenqi/MyApplication;->a(I)V

    goto :goto_3
.end method
