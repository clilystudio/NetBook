.class final Lcom/ushaqi/zhuishushenqi/ui/ak;
.super Lcom/ushaqi/zhuishushenqi/a/e;
.source "SourceFile"
# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ushaqi/zhuishushenqi/a/e",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Lcom/ushaqi/zhuishushenqi/model/CategoryLevelRoot;",
        ">;"
    }
.end annotation
# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/BookCategoryActivity;
# direct methods
.method private constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/BookCategoryActivity;)V
    .locals 0
    .prologue
    p0.Lcom/ushaqi/zhuishushenqi/ui/ak;->a = p1;
    p0.<init>();
    return;
.end method
.method synthetic constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/BookCategoryActivity;B)V
    .locals 0
    .prologue
    p0.<init>(p1);
    return;
.end method
.method private varargs a()Lcom/ushaqi/zhuishushenqi/model/CategoryLevelRoot;
    .locals 1
    .prologue
    :try_start_0
    v0 = invoke-static {}, Lcom/ushaqi/zhuishushenqi/api/b;->b()Lcom/ushaqi/zhuishushenqi/api/ApiService;
    v0.f();
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    move-result-object v0
    :goto_0
    return v0;
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
    v0 = p0.a();
    return v0;
.end method
.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 1
    .prologue
    check-cast p1, Lcom/ushaqi/zhuishushenqi/model/CategoryLevelRoot;
    Lcom/ushaqi/zhuishushenqi/a/e.onPostExecute(p0, p1);
    if (p1 == 0) {
//       if-eqz p1, :cond_0
    }
    v0 = p1.isOk();
    if (v0 == 0) {
//       if-eqz v0, :cond_0
    }
    v0 = p0.Lcom/ushaqi/zhuishushenqi/ui/ak;->a;
    Lcom/ushaqi/zhuishushenqi/ui/BookCategoryActivity.a(v0, p1);
    :cond_0
    return;
.end method
