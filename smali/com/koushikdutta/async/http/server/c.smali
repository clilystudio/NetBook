.class final Lcom/koushikdutta/async/http/server/c;
.super Lcom/koushikdutta/async/http/server/i;
.source "SourceFile"


# instance fields
.field a:Z

.field b:Z

.field private g:Lcom/koushikdutta/async/http/server/g;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Z

.field private k:Lcom/koushikdutta/async/http/server/m;

.field private synthetic l:Lcom/koushikdutta/async/s;

.field private synthetic m:Lcom/koushikdutta/async/http/server/b;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/server/b;Lcom/koushikdutta/async/s;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/koushikdutta/async/http/server/c;->m:Lcom/koushikdutta/async/http/server/b;

    iput-object p2, p0, Lcom/koushikdutta/async/http/server/c;->l:Lcom/koushikdutta/async/s;

    invoke-direct {p0}, Lcom/koushikdutta/async/http/server/i;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/koushikdutta/async/http/server/c;)V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/koushikdutta/async/http/server/c;->n()V

    return-void
.end method

.method static synthetic a(Lcom/koushikdutta/async/http/server/c;Ljava/lang/Exception;)V
    .locals 0

    .prologue
    .line 66
    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/http/server/c;->a_(Ljava/lang/Exception;)V

    return-void
.end method

.method private n()V
    .locals 2

    .prologue
    .line 175
    iget-boolean v0, p0, Lcom/koushikdutta/async/http/server/c;->j:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/koushikdutta/async/http/server/c;->a:Z

    if-eqz v0, :cond_0

    .line 176
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/server/c;->m()Lcom/koushikdutta/async/http/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/b/a;->a()Lcom/koushikdutta/async/http/b/e;

    move-result-object v0

    invoke-static {v0}, Lcom/koushikdutta/async/http/a;->a(Lcom/koushikdutta/async/http/b/e;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 177
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/c;->m:Lcom/koushikdutta/async/http/server/b;

    iget-object v1, p0, Lcom/koushikdutta/async/http/server/c;->l:Lcom/koushikdutta/async/s;

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/server/b;->a(Lcom/koushikdutta/async/s;)V

    .line 183
    :cond_0
    :goto_0
    return-void

    .line 180
    :cond_1
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/c;->l:Lcom/koushikdutta/async/s;

    invoke-interface {v0}, Lcom/koushikdutta/async/s;->c()V

    goto :goto_0
.end method


# virtual methods
.method protected final a(Lcom/koushikdutta/async/http/b/e;)Lcom/koushikdutta/async/http/a/a;
    .locals 1

    .prologue
    .line 77
    invoke-static {p1}, Lcom/koushikdutta/async/http/server/a;->a(Lcom/koushikdutta/async/http/b/e;)Lcom/koushikdutta/async/http/a/a;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/Exception;)V
    .locals 2

    .prologue
    .line 153
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/c;->k:Lcom/koushikdutta/async/http/server/m;

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/server/m;->c()Lcom/koushikdutta/async/http/b/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/b/h;->a()Lcom/koushikdutta/async/http/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/b/e;->c()I

    move-result v0

    const/16 v1, 0x65

    if-ne v0, v1, :cond_1

    .line 172
    :cond_0
    :goto_0
    return-void

    .line 155
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/koushikdutta/async/http/server/c;->j:Z

    .line 156
    invoke-super {p0, p1}, Lcom/koushikdutta/async/http/server/i;->a(Ljava/lang/Exception;)V

    .line 159
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/c;->c:Lcom/koushikdutta/async/s;

    new-instance v1, Lcom/koushikdutta/async/http/server/f;

    invoke-direct {v1, p0}, Lcom/koushikdutta/async/http/server/f;-><init>(Lcom/koushikdutta/async/http/server/c;)V

    invoke-interface {v0, v1}, Lcom/koushikdutta/async/s;->a(Lcom/koushikdutta/async/a/b;)V

    .line 166
    invoke-direct {p0}, Lcom/koushikdutta/async/http/server/c;->n()V

    .line 2133
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/i;->f:Lcom/koushikdutta/async/http/a/a;

    .line 168
    invoke-interface {v0}, Lcom/koushikdutta/async/http/a/a;->a_()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/c;->g:Lcom/koushikdutta/async/http/server/g;

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/c;->g:Lcom/koushikdutta/async/http/server/g;

    iget-object v0, v0, Lcom/koushikdutta/async/http/server/g;->b:Lcom/koushikdutta/async/http/server/r;

    iget-object v1, p0, Lcom/koushikdutta/async/http/server/c;->k:Lcom/koushikdutta/async/http/server/m;

    invoke-interface {v0, p0, v1}, Lcom/koushikdutta/async/http/server/r;->a(Lcom/koushikdutta/async/http/server/h;Lcom/koushikdutta/async/http/server/l;)V

    goto :goto_0
.end method

.method protected final b()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 82
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/server/c;->l()Lcom/koushikdutta/async/http/b/e;

    move-result-object v0

    .line 86
    iget-boolean v1, p0, Lcom/koushikdutta/async/http/server/c;->b:Z

    if-nez v1, :cond_1

    const-string v1, "100-continue"

    const-string v2, "Expect"

    invoke-virtual {v0, v2}, Lcom/koushikdutta/async/http/b/e;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 87
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/server/c;->f()V

    .line 89
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/c;->c:Lcom/koushikdutta/async/s;

    const-string v1, "HTTP/1.1 100 Continue\r\n\r\n"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    new-instance v2, Lcom/koushikdutta/async/http/server/d;

    invoke-direct {v2, p0}, Lcom/koushikdutta/async/http/server/d;-><init>(Lcom/koushikdutta/async/http/server/c;)V

    invoke-static {v0, v1, v2}, Lcom/koushikdutta/async/Y;->a(Lcom/koushikdutta/async/A;[BLcom/koushikdutta/async/a/a;)V

    .line 148
    :cond_0
    :goto_0
    return-void

    .line 105
    :cond_1
    invoke-virtual {v0}, Lcom/koushikdutta/async/http/b/e;->a()Ljava/lang/String;

    move-result-object v0

    .line 106
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 107
    const/4 v1, 0x1

    aget-object v1, v0, v1

    iput-object v1, p0, Lcom/koushikdutta/async/http/server/c;->h:Ljava/lang/String;

    .line 108
    iget-object v1, p0, Lcom/koushikdutta/async/http/server/c;->h:Ljava/lang/String;

    const-string v2, "\\?"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v3

    iput-object v1, p0, Lcom/koushikdutta/async/http/server/c;->i:Ljava/lang/String;

    .line 109
    aget-object v0, v0, v3

    iput-object v0, p0, Lcom/koushikdutta/async/http/server/c;->e:Ljava/lang/String;

    .line 110
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/c;->m:Lcom/koushikdutta/async/http/server/b;

    iget-object v0, v0, Lcom/koushikdutta/async/http/server/b;->a:Lcom/koushikdutta/async/http/server/a;

    iget-object v1, v0, Lcom/koushikdutta/async/http/server/a;->b:Ljava/util/Hashtable;

    monitor-enter v1

    .line 111
    :try_start_0
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/c;->m:Lcom/koushikdutta/async/http/server/b;

    iget-object v0, v0, Lcom/koushikdutta/async/http/server/b;->a:Lcom/koushikdutta/async/http/server/a;

    iget-object v0, v0, Lcom/koushikdutta/async/http/server/a;->b:Ljava/util/Hashtable;

    iget-object v2, p0, Lcom/koushikdutta/async/http/server/c;->e:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 112
    if-eqz v0, :cond_3

    .line 113
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/koushikdutta/async/http/server/g;

    .line 114
    iget-object v3, v0, Lcom/koushikdutta/async/http/server/g;->a:Ljava/util/regex/Pattern;

    iget-object v4, p0, Lcom/koushikdutta/async/http/server/c;->i:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 115
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 117
    iput-object v0, p0, Lcom/koushikdutta/async/http/server/c;->g:Lcom/koushikdutta/async/http/server/g;

    .line 122
    :cond_3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    new-instance v0, Lcom/koushikdutta/async/http/server/e;

    iget-object v1, p0, Lcom/koushikdutta/async/http/server/c;->l:Lcom/koushikdutta/async/s;

    invoke-direct {v0, p0, v1, p0}, Lcom/koushikdutta/async/http/server/e;-><init>(Lcom/koushikdutta/async/http/server/c;Lcom/koushikdutta/async/s;Lcom/koushikdutta/async/http/server/i;)V

    iput-object v0, p0, Lcom/koushikdutta/async/http/server/c;->k:Lcom/koushikdutta/async/http/server/m;

    .line 134
    invoke-static {}, Lcom/koushikdutta/async/http/server/a;->b()V

    .line 136
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/c;->g:Lcom/koushikdutta/async/http/server/g;

    if-nez v0, :cond_4

    .line 137
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/c;->k:Lcom/koushikdutta/async/http/server/m;

    const/16 v1, 0x194

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/server/m;->a(I)V

    .line 138
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/c;->k:Lcom/koushikdutta/async/http/server/m;

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/server/m;->a()V

    goto :goto_0

    .line 122
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 1133
    :cond_4
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/i;->f:Lcom/koushikdutta/async/http/a/a;

    .line 142
    invoke-interface {v0}, Lcom/koushikdutta/async/http/a/a;->a_()Z

    move-result v0

    if-nez v0, :cond_5

    .line 143
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/c;->g:Lcom/koushikdutta/async/http/server/g;

    iget-object v0, v0, Lcom/koushikdutta/async/http/server/g;->b:Lcom/koushikdutta/async/http/server/r;

    iget-object v1, p0, Lcom/koushikdutta/async/http/server/c;->k:Lcom/koushikdutta/async/http/server/m;

    invoke-interface {v0, p0, v1}, Lcom/koushikdutta/async/http/server/r;->a(Lcom/koushikdutta/async/http/server/h;Lcom/koushikdutta/async/http/server/l;)V

    goto/16 :goto_0

    .line 145
    :cond_5
    iget-boolean v0, p0, Lcom/koushikdutta/async/http/server/c;->j:Z

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/c;->g:Lcom/koushikdutta/async/http/server/g;

    iget-object v0, v0, Lcom/koushikdutta/async/http/server/g;->b:Lcom/koushikdutta/async/http/server/r;

    iget-object v1, p0, Lcom/koushikdutta/async/http/server/c;->k:Lcom/koushikdutta/async/http/server/m;

    invoke-interface {v0, p0, v1}, Lcom/koushikdutta/async/http/server/r;->a(Lcom/koushikdutta/async/http/server/h;Lcom/koushikdutta/async/http/server/l;)V

    goto/16 :goto_0
.end method
