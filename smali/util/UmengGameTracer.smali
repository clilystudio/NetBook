.class public final Lcom/ushaqi/zhuishushenqi/util/UmengGameTracer;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/ushaqi/zhuishushenqi/util/UmengGameTracer$From;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/ushaqi/zhuishushenqi/util/UmengGameTracer$From;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/util/UmengGameTracer;->a:Landroid/content/Context;

    .line 46
    iput-object p2, p0, Lcom/ushaqi/zhuishushenqi/util/UmengGameTracer;->b:Lcom/ushaqi/zhuishushenqi/util/UmengGameTracer$From;

    .line 47
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/util/UmengGameTracer;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/util/UmengGameTracer;->b:Lcom/ushaqi/zhuishushenqi/util/UmengGameTracer$From;

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/util/UmengGameTracer$From;->build()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/umeng/a/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    return-void
.end method
