.class final Lcom/ushaqi/zhuishushenqi/ui/bp;
.super Lcom/ushaqi/zhuishushenqi/a/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ushaqi/zhuishushenqi/a/e",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Lcom/ushaqi/zhuishushenqi/model/SecretAppItemRoot;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/MysteryActivity;


# direct methods
.method private constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/MysteryActivity;)V
    .locals 0

    .prologue
    .line 197
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/bp;->a:Lcom/ushaqi/zhuishushenqi/ui/MysteryActivity;

    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/a/e;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/MysteryActivity;B)V
    .locals 0

    .prologue
    .line 197
    invoke-direct {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/bp;-><init>(Lcom/ushaqi/zhuishushenqi/ui/MysteryActivity;)V

    return-void
.end method

.method private varargs a()Lcom/ushaqi/zhuishushenqi/model/SecretAppItemRoot;
    .locals 2

    .prologue
    .line 207
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/bp;->a:Lcom/ushaqi/zhuishushenqi/ui/MysteryActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/MysteryActivity;->a(Lcom/ushaqi/zhuishushenqi/ui/MysteryActivity;Z)Z

    .line 209
    :try_start_0
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/api/b;->b()Lcom/ushaqi/zhuishushenqi/api/ApiService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->n()Lcom/ushaqi/zhuishushenqi/model/SecretAppItemRoot;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 213
    :goto_0
    return-object v0

    .line 210
    :catch_0
    move-exception v0

    .line 211
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 213
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 197
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/bp;->a()Lcom/ushaqi/zhuishushenqi/model/SecretAppItemRoot;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 197
    check-cast p1, Lcom/ushaqi/zhuishushenqi/model/SecretAppItemRoot;

    .line 1218
    invoke-super {p0, p1}, Lcom/ushaqi/zhuishushenqi/a/e;->onPostExecute(Ljava/lang/Object;)V

    .line 1219
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/bp;->a:Lcom/ushaqi/zhuishushenqi/ui/MysteryActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/MysteryActivity;->b(Lcom/ushaqi/zhuishushenqi/ui/MysteryActivity;Z)Z

    .line 1220
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/bp;->a:Lcom/ushaqi/zhuishushenqi/ui/MysteryActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/MysteryActivity;->a(Lcom/ushaqi/zhuishushenqi/ui/MysteryActivity;Z)Z

    .line 1222
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/SecretAppItemRoot;->getApps()[Lcom/ushaqi/zhuishushenqi/model/AppItem;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1223
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/bp;->a:Lcom/ushaqi/zhuishushenqi/ui/MysteryActivity;

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/SecretAppItemRoot;->getApps()[Lcom/ushaqi/zhuishushenqi/model/AppItem;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/MysteryActivity;->a(Lcom/ushaqi/zhuishushenqi/ui/MysteryActivity;Ljava/util/List;)Ljava/util/List;

    .line 1224
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/bp;->a:Lcom/ushaqi/zhuishushenqi/ui/MysteryActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/MysteryActivity;->a(Lcom/ushaqi/zhuishushenqi/ui/MysteryActivity;)V

    :goto_0
    return-void

    .line 1228
    :cond_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/bp;->a:Lcom/ushaqi/zhuishushenqi/ui/MysteryActivity;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/MysteryActivity;->h()V

    goto :goto_0
.end method

.method protected final onPreExecute()V
    .locals 1

    .prologue
    .line 201
    invoke-super {p0}, Lcom/ushaqi/zhuishushenqi/a/e;->onPreExecute()V

    .line 202
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/bp;->a:Lcom/ushaqi/zhuishushenqi/ui/MysteryActivity;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/MysteryActivity;->i()V

    .line 203
    return-void
.end method
