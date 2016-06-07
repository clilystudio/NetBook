.class public final Lcom/ushaqi/zhuishushenqi/ui/bf;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:I


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/be;Ljava/lang/String;II)V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-object p2, p0, Lcom/ushaqi/zhuishushenqi/ui/bf;->a:Ljava/lang/String;

    .line 78
    iput p3, p0, Lcom/ushaqi/zhuishushenqi/ui/bf;->b:I

    .line 79
    iput p4, p0, Lcom/ushaqi/zhuishushenqi/ui/bf;->c:I

    .line 80
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 83
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/ui/bf;->b:I

    return v0
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 91
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/ui/bf;->c:I

    return v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/bf;->a:Ljava/lang/String;

    return-object v0
.end method
