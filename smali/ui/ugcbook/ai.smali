.class final Lcom/ushaqi/zhuishushenqi/ui/ugcbook/ai;
.super Lcom/ushaqi/zhuishushenqi/a/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ushaqi/zhuishushenqi/a/e",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/ushaqi/zhuishushenqi/model/UgcFilterRoot;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainActivity;


# direct methods
.method private constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainActivity;)V
    .locals 0

    .prologue
    .line 172
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/ai;->a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainActivity;

    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/a/e;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainActivity;B)V
    .locals 0

    .prologue
    .line 172
    invoke-direct {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/ai;-><init>(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainActivity;)V

    return-void
.end method

.method private varargs a()Lcom/ushaqi/zhuishushenqi/model/UgcFilterRoot;
    .locals 1

    .prologue
    .line 177
    :try_start_0
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/api/b;->b()Lcom/ushaqi/zhuishushenqi/api/ApiService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->o()Lcom/ushaqi/zhuishushenqi/model/UgcFilterRoot;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 181
    :goto_0
    return-object v0

    .line 178
    :catch_0
    move-exception v0

    .line 179
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 181
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 172
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/ai;->a()Lcom/ushaqi/zhuishushenqi/model/UgcFilterRoot;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 5

    .prologue
    .line 172
    check-cast p1, Lcom/ushaqi/zhuishushenqi/model/UgcFilterRoot;

    .line 1186
    invoke-super {p0, p1}, Lcom/ushaqi/zhuishushenqi/a/e;->onPostExecute(Ljava/lang/Object;)V

    .line 1187
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/UgcFilterRoot;->isOk()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/UgcFilterRoot;->getData()[Lcom/ushaqi/zhuishushenqi/model/UgcFilterRoot$FilterGroup;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1188
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/ai;->a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainActivity;

    new-instance v1, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/ak;

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/ai;->a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainActivity;

    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/ai;->a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainActivity;

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/UgcFilterRoot;->getData()[Lcom/ushaqi/zhuishushenqi/model/UgcFilterRoot$FilterGroup;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/ak;-><init>(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainActivity;Landroid/content/Context;[Lcom/ushaqi/zhuishushenqi/model/UgcFilterRoot$FilterGroup;)V

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainActivity;->a(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainActivity;Lcom/ushaqi/zhuishushenqi/ui/ugcbook/ak;)Lcom/ushaqi/zhuishushenqi/ui/ugcbook/ak;

    .line 1189
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/ai;->a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainActivity;->c(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainActivity;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    new-instance v1, Lcom/ushaqi/zhuishushenqi/util/D;

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/ai;->a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainActivity;

    invoke-direct {v1, v2}, Lcom/ushaqi/zhuishushenqi/util/D;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/ao;)V

    .line 1190
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/ai;->a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainActivity;->c(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainActivity;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/ai;->a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainActivity;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainActivity;->d(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainActivity;)Lcom/ushaqi/zhuishushenqi/ui/ugcbook/ak;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/ah;)V

    .line 172
    :cond_0
    return-void
.end method
