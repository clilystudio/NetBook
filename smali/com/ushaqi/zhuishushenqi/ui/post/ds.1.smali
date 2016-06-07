.class public final Lcom/ushaqi/zhuishushenqi/ui/post/ds;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/ds;->a:Landroid/content/Context;

    .line 18
    return-void
.end method


# virtual methods
.method public final a()Lcom/ushaqi/zhuishushenqi/ui/post/dq;
    .locals 6

    .prologue
    .line 41
    new-instance v0, Lcom/ushaqi/zhuishushenqi/ui/post/dq;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/ds;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/post/ds;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/ui/post/ds;->c:Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/ushaqi/zhuishushenqi/ui/post/ds;->d:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Lcom/ushaqi/zhuishushenqi/ui/post/dq;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    return-object v0
.end method

.method public final a(Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/ui/post/ds;
    .locals 0

    .prologue
    .line 21
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/ds;->b:Ljava/lang/String;

    .line 22
    return-object p0
.end method

.method public final b(Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/ui/post/ds;
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/ds;->c:Ljava/lang/String;

    .line 27
    return-object p0
.end method

.method public final c(Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/ui/post/ds;
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/ds;->d:Ljava/lang/String;

    .line 37
    return-object p0
.end method
