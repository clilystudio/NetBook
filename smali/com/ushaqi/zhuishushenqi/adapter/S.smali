.class final Lcom/ushaqi/zhuishushenqi/adapter/S;
.super Lcom/ushaqi/zhuishushenqi/a/e;
.source "SourceFile"
# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ushaqi/zhuishushenqi/a/e",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Lcom/ushaqi/zhuishushenqi/model/PostPublish;",
        ">;"
    }
.end annotation
# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/adapter/G;
# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/adapter/G;)V
    .locals 0
    .prologue
    p0.Lcom/ushaqi/zhuishushenqi/adapter/S;->a = p1;
    p0.<init>();
    return-void
.end method
.method private static varargs a([Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/PostPublish;
    .locals 3
    .prologue
    :try_start_0
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/api/b;->a()Lcom/ushaqi/zhuishushenqi/api/b;
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/api/b;->b()Lcom/ushaqi/zhuishushenqi/api/ApiService;
    move-result-object v0
    v1 = 0x0;
    v1 = p0[v1];
    v2 = 0x1;
    v2 = p0[v2];
    v0.k(v1, v2);
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    move-result-object v0
    :goto_0
    return-object v0
    :catch_0
    move-exception v0
    v0.printStackTrace();
    v0 = 0x0;
    goto :goto_0
.end method
# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .prologue
    check-cast p1, [Ljava/lang/String;
    invoke-static {p1}, Lcom/ushaqi/zhuishushenqi/adapter/S;->a([Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/PostPublish;
    move-result-object v0
    return-object v0
.end method
.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 3
    .prologue
    v2 = 0x0;
    check-cast p1, Lcom/ushaqi/zhuishushenqi/model/PostPublish;
    if-eqz p1, :cond_0
    p1.isOk();
    move-result v0
    if-eqz v0, :cond_0
    v0 = p0.Lcom/ushaqi/zhuishushenqi/adapter/S;->a;
    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/adapter/G;->b(Lcom/ushaqi/zhuishushenqi/adapter/G;)Landroid/view/View;
    move-result-object v0
    if-eqz v0, :cond_0
    v0 = p0.Lcom/ushaqi/zhuishushenqi/adapter/S;->a;
    v0.f();
    move-result-object v0
    v1 = p0.Lcom/ushaqi/zhuishushenqi/adapter/S;->a;
    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/adapter/G;->c(Lcom/ushaqi/zhuishushenqi/adapter/G;)Lcom/ushaqi/zhuishushenqi/model/Tweet;
    move-result-object v1
    v0.remove(v1);
    v0 = p0.Lcom/ushaqi/zhuishushenqi/adapter/S;->a;
    v0.notifyDataSetChanged();
    v0 = p0.Lcom/ushaqi/zhuishushenqi/adapter/S;->a;
    invoke-static {v0, v2}, Lcom/ushaqi/zhuishushenqi/adapter/G;->a(Lcom/ushaqi/zhuishushenqi/adapter/G;Landroid/view/View;)Landroid/view/View;
    v0 = p0.Lcom/ushaqi/zhuishushenqi/adapter/S;->a;
    invoke-static {v0, v2}, Lcom/ushaqi/zhuishushenqi/adapter/G;->d(Lcom/ushaqi/zhuishushenqi/adapter/G;Lcom/ushaqi/zhuishushenqi/model/Tweet;)Lcom/ushaqi/zhuishushenqi/model/Tweet;
    :cond_0
    return-void
.end method
