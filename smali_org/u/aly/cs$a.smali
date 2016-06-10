.class public Lu/aly/cs$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lu/aly/da;


# instance fields
.field private final a:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lu/aly/cs$a;->a:J

    .line 72
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    int-to-long v0, p1

    iput-wide v0, p0, Lu/aly/cs$a;->a:J

    .line 76
    return-void
.end method


# virtual methods
.method public a(Lu/aly/bZ;)Lu/aly/bN;
    .locals 4

    .prologue
    .line 79
    new-instance v0, Lu/aly/cs;

    iget-wide v2, p0, Lu/aly/cs$a;->a:J

    invoke-direct {v0, p1, v2, v3}, Lu/aly/cs;-><init>(Lu/aly/bZ;J)V

    return-object v0
.end method
