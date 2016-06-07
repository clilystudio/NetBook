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
    .line 184
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/ak;->a:Lcom/ushaqi/zhuishushenqi/ui/BookCategoryActivity;

    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/a/e;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/BookCategoryActivity;B)V
    .locals 0

    .prologue
    .line 184
    invoke-direct {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/ak;-><init>(Lcom/ushaqi/zhuishushenqi/ui/BookCategoryActivity;)V

    return-void
.end method

.method private varargs a()Lcom/ushaqi/zhuishushenqi/model/CategoryLevelRoot;
    .locals 1

    .prologue
    .line 189
    :try_start_0
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/api/b;->b()Lcom/ushaqi/zhuishushenqi/api/ApiService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->f()Lcom/ushaqi/zhuishushenqi/model/CategoryLevelRoot;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 193
    :goto_0
    return-object v0

    .line 190
    :catch_0
    move-exception v0

    .line 191
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 193
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 184
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/ak;->a()Lcom/ushaqi/zhuishushenqi/model/CategoryLevelRoot;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 184
    check-cast p1, Lcom/ushaqi/zhuishushenqi/model/CategoryLevelRoot;

    .line 1198
    invoke-super {p0, p1}, Lcom/ushaqi/zhuishushenqi/a/e;->onPostExecute(Ljava/lang/Object;)V

    .line 1200
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/CategoryLevelRoot;->isOk()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1201
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ak;->a:Lcom/ushaqi/zhuishushenqi/ui/BookCategoryActivity;

    invoke-static {v0, p1}, Lcom/ushaqi/zhuishushenqi/ui/BookCategoryActivity;->a(Lcom/ushaqi/zhuishushenqi/ui/BookCategoryActivity;Lcom/ushaqi/zhuishushenqi/model/CategoryLevelRoot;)V

    .line 184
    :cond_0
    return-void
.end method
