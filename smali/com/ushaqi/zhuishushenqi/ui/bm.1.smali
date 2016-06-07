.class final Lcom/ushaqi/zhuishushenqi/ui/bm;
.super Lcom/ushaqi/zhuishushenqi/a/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ushaqi/zhuishushenqi/a/e",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/ushaqi/zhuishushenqi/model/MhdListRoot;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/MhdListActivity;


# direct methods
.method private constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/MhdListActivity;)V
    .locals 0

    .prologue
    .line 128
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/bm;->a:Lcom/ushaqi/zhuishushenqi/ui/MhdListActivity;

    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/a/e;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/MhdListActivity;B)V
    .locals 0

    .prologue
    .line 128
    invoke-direct {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/bm;-><init>(Lcom/ushaqi/zhuishushenqi/ui/MhdListActivity;)V

    return-void
.end method

.method private varargs a()Lcom/ushaqi/zhuishushenqi/model/MhdListRoot;
    .locals 1

    .prologue
    .line 133
    :try_start_0
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/api/b;->b()Lcom/ushaqi/zhuishushenqi/api/ApiService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->g()Lcom/ushaqi/zhuishushenqi/model/MhdListRoot;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 137
    :goto_0
    return-object v0

    .line 134
    :catch_0
    move-exception v0

    .line 135
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 137
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 128
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/bm;->a()Lcom/ushaqi/zhuishushenqi/model/MhdListRoot;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 128
    check-cast p1, Lcom/ushaqi/zhuishushenqi/model/MhdListRoot;

    .line 1142
    invoke-super {p0, p1}, Lcom/ushaqi/zhuishushenqi/a/e;->onPostExecute(Ljava/lang/Object;)V

    .line 1144
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/MhdListRoot;->getInfo()[Lcom/ushaqi/zhuishushenqi/model/MhdInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/MhdListRoot;->getInfo()[Lcom/ushaqi/zhuishushenqi/model/MhdInfo;

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_0

    .line 1145
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/bm;->a:Lcom/ushaqi/zhuishushenqi/ui/MhdListActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/MhdListActivity;->a(Lcom/ushaqi/zhuishushenqi/ui/MhdListActivity;I)V

    .line 1146
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/bm;->a:Lcom/ushaqi/zhuishushenqi/ui/MhdListActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/MhdListActivity;->b(Lcom/ushaqi/zhuishushenqi/ui/MhdListActivity;)Lcom/ushaqi/zhuishushenqi/adapter/v;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/MhdListRoot;->getInfo()[Lcom/ushaqi/zhuishushenqi/model/MhdInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/adapter/v;->a([Ljava/lang/Object;)V

    :goto_0
    return-void

    .line 1150
    :cond_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/bm;->a:Lcom/ushaqi/zhuishushenqi/ui/MhdListActivity;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/MhdListActivity;->a(Lcom/ushaqi/zhuishushenqi/ui/MhdListActivity;I)V

    .line 1151
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/bm;->a:Lcom/ushaqi/zhuishushenqi/ui/MhdListActivity;

    const v1, 0x7f050128

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;I)V

    goto :goto_0
.end method
