.class final Lcom/ushaqi/zhuishushenqi/reader/bz;
.super Lcom/ushaqi/zhuishushenqi/a/e;
.source "SourceFile"
# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ushaqi/zhuishushenqi/a/e",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/List",
        "<",
        "Lcom/ushaqi/zhuishushenqi/model/MenuAd;",
        ">;>;"
    }
.end annotation
# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/reader/ReaderMenuFragment;
# direct methods
.method private constructor <init>(Lcom/ushaqi/zhuishushenqi/reader/ReaderMenuFragment;)V
    .locals 0
    .prologue
    p0.Lcom/ushaqi/zhuishushenqi/reader/bz;->a = p1;
    p0.<init>();
    return;
.end method
.method synthetic constructor <init>(Lcom/ushaqi/zhuishushenqi/reader/ReaderMenuFragment;B)V
    .locals 0
    .prologue
    p0.<init>(p1);
    return;
.end method
.method private static varargs a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/ushaqi/zhuishushenqi/model/MenuAd;",
            ">;"
        }
    .end annotation
    .prologue
    :try_start_0
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/api/b;->a()Lcom/ushaqi/zhuishushenqi/api/b;
    v0 = invoke-static {}, Lcom/ushaqi/zhuishushenqi/api/b;->b()Lcom/ushaqi/zhuishushenqi/api/ApiService;
    v0.i();
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
    v0 = invoke-static {}, Lcom/ushaqi/zhuishushenqi/reader/bz;->a()Ljava/util/List;
    return v0;
.end method
.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 2
    .prologue
    check-cast p1, Ljava/util/List;
    Lcom/ushaqi/zhuishushenqi/a/e.onPostExecute(p0, p1);
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/bz;->a;
    v0 = v0.getActivity();
    if (v0 == 0) {
//       if-eqz v0, :cond_0
    }
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/bz;->a;
    v0 = v0.getView();
    if (v0 != 0) {
//       if-nez v0, :cond_1
    }
    :cond_0
    :goto_0
    return;
    :cond_1
    if (p1 == 0) {
//       if-eqz p1, :cond_2
    }
    v0 = p1.isEmpty();
    if (v0 == 0) {
//       if-eqz v0, :cond_3
    }
    :cond_2
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/bz;->a;
    Lcom/ushaqi/zhuishushenqi/reader/ReaderMenuFragment.l(v0);
    goto :goto_0
    :cond_3
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/bz;->a;
    v0 = v0.getView();
    v1 = 0x7f0c0045;
    v0 = v0.findViewById(v1);
    v1 = 0x0;
    v0.setVisibility(v1);
    v1 = p0.Lcom/ushaqi/zhuishushenqi/reader/bz;->a;
    v1 = Lcom/ushaqi/zhuishushenqi/reader/ReaderMenuFragment.m(v1);
    v0.setOnClickListener(v1);
    v1 = 0x7f0c0034;
    v0 = v0.findViewById(v1);
    v1 = p0.Lcom/ushaqi/zhuishushenqi/reader/bz;->a;
    v1 = Lcom/ushaqi/zhuishushenqi/reader/ReaderMenuFragment.m(v1);
    v0.setOnClickListener(v1);
    v0 = invoke-static {}, Lcom/ushaqi/zhuishushenqi/util/a;->a()Lcom/ushaqi/zhuishushenqi/util/a;
    v0.a(p1);
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/bz;->a;
    Lcom/ushaqi/zhuishushenqi/reader/ReaderMenuFragment.n(v0);
    goto :goto_0
.end method
