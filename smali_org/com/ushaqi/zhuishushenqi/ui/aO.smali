.class final Lcom/ushaqi/zhuishushenqi/ui/aO;
.super Lcom/ushaqi/zhuishushenqi/a/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ushaqi/zhuishushenqi/a/e",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/ushaqi/zhuishushenqi/model/BookRankRoot;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/BookRankListActivity;


# direct methods
.method private constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/BookRankListActivity;)V
    .locals 0

    .prologue
    .line 132
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/aO;->a:Lcom/ushaqi/zhuishushenqi/ui/BookRankListActivity;

    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/a/e;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/BookRankListActivity;B)V
    .locals 0

    .prologue
    .line 132
    invoke-direct {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/aO;-><init>(Lcom/ushaqi/zhuishushenqi/ui/BookRankListActivity;)V

    return-void
.end method

.method private varargs a()Lcom/ushaqi/zhuishushenqi/model/BookRankRoot;
    .locals 1

    .prologue
    .line 137
    :try_start_0
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/api/b;->b()Lcom/ushaqi/zhuishushenqi/api/ApiService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->d()Lcom/ushaqi/zhuishushenqi/model/BookRankRoot;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 141
    :goto_0
    return-object v0

    .line 138
    :catch_0
    move-exception v0

    .line 139
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 141
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 132
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/aO;->a()Lcom/ushaqi/zhuishushenqi/model/BookRankRoot;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 132
    check-cast p1, Lcom/ushaqi/zhuishushenqi/model/BookRankRoot;

    .line 1146
    invoke-super {p0, p1}, Lcom/ushaqi/zhuishushenqi/a/e;->onPostExecute(Ljava/lang/Object;)V

    .line 1148
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/BookRankRoot;->isOk()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1149
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/aO;->a:Lcom/ushaqi/zhuishushenqi/ui/BookRankListActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/BookRankListActivity;->a(Lcom/ushaqi/zhuishushenqi/ui/BookRankListActivity;I)V

    .line 1150
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/aO;->a:Lcom/ushaqi/zhuishushenqi/ui/BookRankListActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/BookRankListActivity;->c(Lcom/ushaqi/zhuishushenqi/ui/BookRankListActivity;)Lcom/ushaqi/zhuishushenqi/adapter/BookRankAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ushaqi/zhuishushenqi/adapter/BookRankAdapter;->a(Lcom/ushaqi/zhuishushenqi/model/BookRankRoot;)V

    :goto_0
    return-void

    .line 1154
    :cond_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/aO;->a:Lcom/ushaqi/zhuishushenqi/ui/BookRankListActivity;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/BookRankListActivity;->a(Lcom/ushaqi/zhuishushenqi/ui/BookRankListActivity;I)V

    .line 1155
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/aO;->a:Lcom/ushaqi/zhuishushenqi/ui/BookRankListActivity;

    const v1, 0x7f050128

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;I)V

    goto :goto_0
.end method
