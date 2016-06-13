.class final Lcom/ushaqi/zhuishushenqi/reader/bp;
.super Lcom/ushaqi/zhuishushenqi/a/e;
.source "SourceFile"
# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ushaqi/zhuishushenqi/a/e",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/ushaqi/zhuishushenqi/model/ChapterKeysRoot;",
        ">;"
    }
.end annotation
# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;
# direct methods
.method private constructor <init>(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)V
    .locals 0
    .prologue
    p0.Lcom/ushaqi/zhuishushenqi/reader/bp;->a = p1;
    p0.<init>();
    return;
.end method
.method synthetic constructor <init>(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;B)V
    .locals 0
    .prologue
    p0.<init>(p1);
    return;
.end method
.method private varargs a()Lcom/ushaqi/zhuishushenqi/model/ChapterKeysRoot;
    .locals 3
    .prologue
    :try_start_0
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/api/b;->a()Lcom/ushaqi/zhuishushenqi/api/b;
    v0 = invoke-static {}, Lcom/ushaqi/zhuishushenqi/api/b;->b()Lcom/ushaqi/zhuishushenqi/api/ApiService;
    v1 = invoke-static {}, Landroid/support/design/widget/am;->e()Lcom/ushaqi/zhuishushenqi/model/Account;
    v1 = v1.getToken();
    v2 = p0.Lcom/ushaqi/zhuishushenqi/reader/bp;->a;
    v2 = Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity.M(v2);
    v0.g(v1, v2);
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
    .locals 6
    .prologue
    check-cast p1, Lcom/ushaqi/zhuishushenqi/model/ChapterKeysRoot;
    if (p1 == 0) {
//       if-eqz p1, :cond_2
    }
    v0 = p1.isOk();
    if (v0 == 0) {
//       if-eqz v0, :cond_2
    }
    v0 = new HashMap();
    v1 = p1.getKeyLength();
    int-to-double v2, v1
    v4 = 0x3fe6666666666666L    # 0.7;
    v2 /= v4;
    double-to-int v1, v2
    v0.<init>(v1);
    v2 = p1.getKeys();
    v3 = v2.length;
    v1 = 0x0;
    :goto_0
    if (v1 >= v3) {
//       if-ge v1, v3, :cond_0
    }
    v4 = v2[v1];
    v5 = v4.get_id();
    v4 = v4.getKey();
    v0.put(v5, v4);
    v1 = v1 + 0x1;
    goto :goto_0
    :cond_0
    v1 = p0.Lcom/ushaqi/zhuishushenqi/reader/bp;->a;
    v1 = Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity.M(v1);
    Lcom/arcsoft/hpay100/a/a.a(v1, v0);
    :cond_1
    :goto_1
    v1 = p0.Lcom/ushaqi/zhuishushenqi/reader/bp;->a;
    v1 = Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity.Y(v1);
    v1.a(v0);
    return;
    :cond_2
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/bp;->a;
    v0 = Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity.M(v0);
    v0 = Lcom/arcsoft/hpay100/a/a.M(v0);
    if (v0 != 0) {
//       if-nez v0, :cond_1
    }
    v0 = new HashMap();
    v0.<init>();
    goto :goto_1
.end method
