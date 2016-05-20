.class public final Lcom/ushaqi/zhuishushenqi/event/J;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/event/J;->a:Ljava/lang/String;

    .line 17
    iput-object p2, p0, Lcom/ushaqi/zhuishushenqi/event/J;->b:Ljava/lang/String;

    .line 18
    iput-object p5, p0, Lcom/ushaqi/zhuishushenqi/event/J;->d:Ljava/lang/String;

    .line 19
    iput-object p3, p0, Lcom/ushaqi/zhuishushenqi/event/J;->c:Ljava/lang/String;

    .line 20
    iput p4, p0, Lcom/ushaqi/zhuishushenqi/event/J;->e:I

    .line 21
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/event/J;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/event/J;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/event/J;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/event/J;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final e()I
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/event/J;->e:I

    return v0
.end method
