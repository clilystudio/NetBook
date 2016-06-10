.class final Lcom/umeng/update/net/s;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Lcom/umeng/update/net/f;

.field b:Lcom/umeng/update/net/r;

.field c:I

.field d:Lcom/umeng/update/net/k;

.field e:[J


# direct methods
.method public constructor <init>(Lcom/umeng/update/net/k;I)V
    .locals 1

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    const/4 v0, 0x3

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/umeng/update/net/s;->e:[J

    .line 87
    iput p2, p0, Lcom/umeng/update/net/s;->c:I

    .line 88
    iput-object p1, p0, Lcom/umeng/update/net/s;->d:Lcom/umeng/update/net/k;

    .line 89
    return-void
.end method
