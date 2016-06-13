.class public final Lcom/ushaqi/zhuishushenqi/a/f;
.super Lcom/ushaqi/zhuishushenqi/a/e;
.source "SourceFile"
# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ushaqi/zhuishushenqi/a/e",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation
# instance fields
.field private a:Ljava/lang/String;
# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .prologue
    p0.<init>();
    p0.Lcom/ushaqi/zhuishushenqi/a/f;->a = p1;
    return;
.end method
.method private varargs a()Ljava/lang/Void;
    .locals 2
    .prologue
    :try_start_0
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/api/b;->a()Lcom/ushaqi/zhuishushenqi/api/b;
    v0 = invoke-static {}, Lcom/ushaqi/zhuishushenqi/api/b;->b()Lcom/ushaqi/zhuishushenqi/api/ApiService;
    v1 = p0.Lcom/ushaqi/zhuishushenqi/a/f;->a;
    v0 = v0.I(v1);
    if (v0 == 0) {
//       if-eqz v0, :cond_0
    }
    v1 = v0.isOk();
    if (v1 == 0) {
//       if-eqz v1, :cond_0
    }
    v1 = p0.Lcom/ushaqi/zhuishushenqi/a/f;->a;
    v0 = v0.getCount();
    Lcom/ushaqi/zhuishushenqi/db/BookTopicEnterRecord.updateCount(v1, v0);
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    :cond_0
    :goto_0
    v0 = 0x0;
    return v0;
    :catch_0
    move-exception v0
    v0.printStackTrace();
    goto :goto_0
.end method
# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .prologue
    v0 = p0.a();
    return v0;
.end method
