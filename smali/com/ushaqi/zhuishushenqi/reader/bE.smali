.class final Lcom/ushaqi/zhuishushenqi/reader/bE;
.super Lcom/ushaqi/zhuishushenqi/a/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ushaqi/zhuishushenqi/a/e",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "[",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/reader/ReaderMixActivity;


# direct methods
.method private constructor <init>(Lcom/ushaqi/zhuishushenqi/reader/ReaderMixActivity;)V
    .locals 0

    .prologue
    .line 157
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/reader/bE;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderMixActivity;

    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/a/e;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ushaqi/zhuishushenqi/reader/ReaderMixActivity;B)V
    .locals 0

    .prologue
    .line 157
    invoke-direct {p0, p1}, Lcom/ushaqi/zhuishushenqi/reader/bE;-><init>(Lcom/ushaqi/zhuishushenqi/reader/ReaderMixActivity;)V

    return-void
.end method

.method private static varargs a([Ljava/lang/String;)[Ljava/lang/Object;
    .locals 4

    .prologue
    .line 162
    :try_start_0
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/api/b;->a()Lcom/ushaqi/zhuishushenqi/api/b;

    invoke-static {}, Lcom/ushaqi/zhuishushenqi/api/b;->b()Lcom/ushaqi/zhuishushenqi/api/ApiService;

    move-result-object v1

    .line 163
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x0

    aget-object v3, p0, v3

    .line 164
    invoke-virtual {v1, v3}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->d(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    aget-object v3, p0, v3

    .line 165
    invoke-virtual {v1, v3}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->aa(Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/ChineseAllPromRoot;

    move-result-object v1

    aput-object v1, v0, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 170
    :goto_0
    return-object v0

    .line 167
    :catch_0
    move-exception v0

    .line 168
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 170
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 157
    check-cast p1, [Ljava/lang/String;

    invoke-static {p1}, Lcom/ushaqi/zhuishushenqi/reader/bE;->a([Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 157
    check-cast p1, [Ljava/lang/Object;

    .line 1175
    if-eqz p1, :cond_2

    .line 1178
    aget-object v0, p1, v3

    check-cast v0, Ljava/util/List;

    .line 1179
    if-eqz v0, :cond_5

    .line 1180
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 1181
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/bE;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderMixActivity;

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/reader/ReaderMixActivity;->f()V

    .line 1182
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/bE;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderMixActivity;

    const v2, 0x7f0c03f8

    invoke-virtual {v1, v2}, Lcom/ushaqi/zhuishushenqi/reader/ReaderMixActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1183
    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/reader/bE;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderMixActivity;

    invoke-virtual {v2}, Lcom/ushaqi/zhuishushenqi/reader/ReaderMixActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f050198

    new-array v6, v4, [Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-virtual {v2, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1185
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v2, v3

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ushaqi/zhuishushenqi/model/TocSummary;

    .line 1186
    const-string v6, "zhuishuvip"

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/TocSummary;->getSource()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 1187
    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/reader/bE;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderMixActivity;

    invoke-static {v2, v1}, Lcom/ushaqi/zhuishushenqi/reader/ReaderMixActivity;->a(Lcom/ushaqi/zhuishushenqi/reader/ReaderMixActivity;Lcom/ushaqi/zhuishushenqi/model/TocSummary;)Lcom/ushaqi/zhuishushenqi/model/TocSummary;

    move v1, v4

    :goto_1
    move v2, v1

    .line 1190
    goto :goto_0

    .line 1191
    :cond_0
    if-eqz v2, :cond_1

    .line 1192
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/bE;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderMixActivity;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/reader/ReaderMixActivity;->e(Lcom/ushaqi/zhuishushenqi/reader/ReaderMixActivity;)V

    .line 1193
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/bE;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderMixActivity;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/reader/ReaderMixActivity;->f(Lcom/ushaqi/zhuishushenqi/reader/ReaderMixActivity;)Lcom/ushaqi/zhuishushenqi/model/TocSummary;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1195
    :cond_1
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/bE;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderMixActivity;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/reader/ReaderMixActivity;->d(Lcom/ushaqi/zhuishushenqi/reader/ReaderMixActivity;)Lcom/ushaqi/zhuishushenqi/reader/bG;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ushaqi/zhuishushenqi/reader/bG;->a(Ljava/util/Collection;)V

    .line 1197
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/bE;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderMixActivity;

    aget-object v0, p1, v4

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/ChineseAllPromRoot;

    invoke-static {v1, v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderMixActivity;->a(Lcom/ushaqi/zhuishushenqi/reader/ReaderMixActivity;Lcom/ushaqi/zhuishushenqi/model/ChineseAllPromRoot;)Lcom/ushaqi/zhuishushenqi/model/ChineseAllPromRoot;

    .line 1198
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/bE;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderMixActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderMixActivity;->g(Lcom/ushaqi/zhuishushenqi/reader/ReaderMixActivity;)Lcom/ushaqi/zhuishushenqi/model/ChineseAllPromRoot;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/bE;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderMixActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderMixActivity;->g(Lcom/ushaqi/zhuishushenqi/reader/ReaderMixActivity;)Lcom/ushaqi/zhuishushenqi/model/ChineseAllPromRoot;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/ChineseAllPromRoot;->getProm()Lcom/ushaqi/zhuishushenqi/model/ChineseAllPromRoot$Prom;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1199
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/bE;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderMixActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderMixActivity;->h(Lcom/ushaqi/zhuishushenqi/reader/ReaderMixActivity;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/ushaqi/zhuishushenqi/reader/bF;

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/reader/bE;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderMixActivity;

    iget-object v4, p0, Lcom/ushaqi/zhuishushenqi/reader/bE;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderMixActivity;

    invoke-static {v4}, Lcom/ushaqi/zhuishushenqi/reader/ReaderMixActivity;->g(Lcom/ushaqi/zhuishushenqi/reader/ReaderMixActivity;)Lcom/ushaqi/zhuishushenqi/model/ChineseAllPromRoot;

    move-result-object v4

    invoke-direct {v1, v2, v4}, Lcom/ushaqi/zhuishushenqi/reader/bF;-><init>(Lcom/ushaqi/zhuishushenqi/reader/ReaderMixActivity;Lcom/ushaqi/zhuishushenqi/model/ChineseAllPromRoot;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1200
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/bE;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderMixActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderMixActivity;->h(Lcom/ushaqi/zhuishushenqi/reader/ReaderMixActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1207
    :cond_2
    :goto_2
    return-void

    .line 1202
    :cond_3
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/bE;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderMixActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderMixActivity;->h(Lcom/ushaqi/zhuishushenqi/reader/ReaderMixActivity;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 1207
    :cond_4
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/bE;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderMixActivity;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderMixActivity;->g()V

    goto :goto_2

    .line 1210
    :cond_5
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/bE;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderMixActivity;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderMixActivity;->h()V

    goto :goto_2

    :cond_6
    move v1, v2

    goto :goto_1
.end method
