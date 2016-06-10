.class public abstract Lorg/mozilla/universalchardet/prober/c/l;
.super Ljava/lang/Object;


# instance fields
.field private a:[S

.field private b:[B

.field private c:F

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>([S[BFZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/mozilla/universalchardet/prober/c/l;->a:[S

    iput-object p2, p0, Lorg/mozilla/universalchardet/prober/c/l;->b:[B

    iput p3, p0, Lorg/mozilla/universalchardet/prober/c/l;->c:F

    iput-object p5, p0, Lorg/mozilla/universalchardet/prober/c/l;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(I)B
    .locals 1

    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/c/l;->b:[B

    aget-byte v0, v0, p1

    return v0
.end method

.method public final a()F
    .locals 1

    iget v0, p0, Lorg/mozilla/universalchardet/prober/c/l;->c:F

    return v0
.end method

.method public final a(B)S
    .locals 2

    and-int/lit16 v0, p1, 0xff

    iget-object v1, p0, Lorg/mozilla/universalchardet/prober/c/l;->a:[S

    aget-short v0, v1, v0

    return v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/c/l;->d:Ljava/lang/String;

    return-object v0
.end method
