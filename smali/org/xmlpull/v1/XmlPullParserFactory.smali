.class public Lorg/xmlpull/v1/XmlPullParserFactory;
.super Ljava/lang/Object;
.source "XmlPullParserFactory.java"


# static fields
.field public static final PROPERTY_NAME:Ljava/lang/String; = "org.xmlpull.v1.XmlPullParserFactory"


# instance fields
.field protected classNamesLocation:Ljava/lang/String;

.field protected features:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field protected parserClasses:Ljava/util/ArrayList;

.field protected serializerClasses:Ljava/util/ArrayList;


# direct methods
.method protected constructor <init>()V
    .locals 2

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/xmlpull/v1/XmlPullParserFactory;->classNamesLocation:Ljava/lang/String;

    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/xmlpull/v1/XmlPullParserFactory;->features:Ljava/util/HashMap;

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/xmlpull/v1/XmlPullParserFactory;->parserClasses:Ljava/util/ArrayList;

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/xmlpull/v1/XmlPullParserFactory;->serializerClasses:Ljava/util/ArrayList;

    .line 40
    :try_start_0
    iget-object v0, p0, Lorg/xmlpull/v1/XmlPullParserFactory;->parserClasses:Ljava/util/ArrayList;

    const-string v1, "org.kxml2.io.KXmlParser"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    iget-object v0, p0, Lorg/xmlpull/v1/XmlPullParserFactory;->serializerClasses:Ljava/util/ArrayList;

    const-string v1, "org.kxml2.io.KXmlSerializer"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    nop

    .line 45
    return-void

    .line 42
    :catch_0
    move-exception v0

    .line 43
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
.end method

.method private getParserInstance()Lorg/xmlpull/v1/XmlPullParser;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 140
    const/4 v0, 0x0

    .line 142
    .local v0, "exceptions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Exception;>;"
    iget-object v1, p0, Lorg/xmlpull/v1/XmlPullParserFactory;->parserClasses:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/xmlpull/v1/XmlPullParserFactory;->parserClasses:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 143
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v1

    .line 144
    iget-object v1, p0, Lorg/xmlpull/v1/XmlPullParserFactory;->parserClasses:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 146
    .local v2, "o":Ljava/lang/Object;
    if-eqz v2, :cond_0

    .line 147
    :try_start_0
    move-object v3, v2

    check-cast v3, Ljava/lang/Class;

    .line 148
    .local v3, "parserClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/xmlpull/v1/XmlPullParser;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    .line 154
    .end local v3    # "parserClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v3

    .line 155
    .local v3, "e":Ljava/lang/ClassCastException;
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .end local v2    # "o":Ljava/lang/Object;
    .end local v3    # "e":Ljava/lang/ClassCastException;
    goto :goto_2

    .line 152
    .restart local v2    # "o":Ljava/lang/Object;
    :catch_1
    move-exception v3

    .line 153
    .local v3, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .end local v3    # "e":Ljava/lang/IllegalAccessException;
    goto :goto_1

    .line 150
    :catch_2
    move-exception v3

    .line 151
    .local v3, "e":Ljava/lang/InstantiationException;
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 156
    .end local v2    # "o":Ljava/lang/Object;
    .end local v3    # "e":Ljava/lang/InstantiationException;
    :cond_0
    :goto_1
    nop

    .line 157
    :goto_2
    goto :goto_0

    .line 160
    :cond_1
    const-string v1, "Invalid parser class list"

    invoke-static {v1, v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstantiationException(Ljava/lang/String;Ljava/util/ArrayList;)Lorg/xmlpull/v1/XmlPullParserException;

    move-result-object v1

    throw v1
.end method

.method private getSerializerInstance()Lorg/xmlpull/v1/XmlSerializer;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 164
    const/4 v0, 0x0

    .line 166
    .local v0, "exceptions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Exception;>;"
    iget-object v1, p0, Lorg/xmlpull/v1/XmlPullParserFactory;->serializerClasses:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/xmlpull/v1/XmlPullParserFactory;->serializerClasses:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 167
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v1

    .line 168
    iget-object v1, p0, Lorg/xmlpull/v1/XmlPullParserFactory;->serializerClasses:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 170
    .local v2, "o":Ljava/lang/Object;
    if-eqz v2, :cond_0

    .line 171
    :try_start_0
    move-object v3, v2

    check-cast v3, Ljava/lang/Class;

    .line 172
    .local v3, "serializerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/xmlpull/v1/XmlSerializer;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    .line 178
    .end local v3    # "serializerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v3

    .line 179
    .local v3, "e":Ljava/lang/ClassCastException;
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .end local v2    # "o":Ljava/lang/Object;
    .end local v3    # "e":Ljava/lang/ClassCastException;
    goto :goto_2

    .line 176
    .restart local v2    # "o":Ljava/lang/Object;
    :catch_1
    move-exception v3

    .line 177
    .local v3, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .end local v3    # "e":Ljava/lang/IllegalAccessException;
    goto :goto_1

    .line 174
    :catch_2
    move-exception v3

    .line 175
    .local v3, "e":Ljava/lang/InstantiationException;
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 180
    .end local v2    # "o":Ljava/lang/Object;
    .end local v3    # "e":Ljava/lang/InstantiationException;
    :cond_0
    :goto_1
    nop

    .line 181
    :goto_2
    goto :goto_0

    .line 184
    :cond_1
    const-string v1, "Invalid serializer class list"

    invoke-static {v1, v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstantiationException(Ljava/lang/String;Ljava/util/ArrayList;)Lorg/xmlpull/v1/XmlPullParserException;

    move-result-object v1

    throw v1
.end method

.method public static newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 221
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserFactory;

    invoke-direct {v0}, Lorg/xmlpull/v1/XmlPullParserFactory;-><init>()V

    return-object v0
.end method

.method public static newInstance(Ljava/lang/String;Ljava/lang/Class;)Lorg/xmlpull/v1/XmlPullParserFactory;
    .locals 1
    .param p0, "unused"    # Ljava/lang/String;
    .param p1, "unused2"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 232
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v0

    return-object v0
.end method

.method private static newInstantiationException(Ljava/lang/String;Ljava/util/ArrayList;)Lorg/xmlpull/v1/XmlPullParserException;
    .locals 3
    .param p0, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Exception;",
            ">;)",
            "Lorg/xmlpull/v1/XmlPullParserException;"
        }
    .end annotation

    .line 189
    .local p1, "exceptions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Exception;>;"
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 192
    :cond_0
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    invoke-direct {v0, p0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 193
    .local v0, "exception":Lorg/xmlpull/v1/XmlPullParserException;
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Exception;

    .line 194
    .local v2, "ex":Ljava/lang/Exception;
    invoke-virtual {v0, v2}, Lorg/xmlpull/v1/XmlPullParserException;->addSuppressed(Ljava/lang/Throwable;)V

    .line 195
    .end local v2    # "ex":Ljava/lang/Exception;
    goto :goto_0

    .line 197
    :cond_1
    return-object v0

    .line 190
    .end local v0    # "exception":Lorg/xmlpull/v1/XmlPullParserException;
    :cond_2
    :goto_1
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    invoke-direct {v0, p0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public getFeature(Ljava/lang/String;)Z
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 68
    iget-object v0, p0, Lorg/xmlpull/v1/XmlPullParserFactory;->features:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 69
    .local v0, "value":Ljava/lang/Boolean;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isNamespaceAware()Z
    .locals 1

    .line 93
    const-string v0, "http://xmlpull.org/v1/doc/features.html#process-namespaces"

    invoke-virtual {p0, v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->getFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isValidating()Z
    .locals 1

    .line 117
    const-string v0, "http://xmlpull.org/v1/doc/features.html#validation"

    invoke-virtual {p0, v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->getFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public newPullParser()Lorg/xmlpull/v1/XmlPullParser;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 127
    invoke-direct {p0}, Lorg/xmlpull/v1/XmlPullParserFactory;->getParserInstance()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    .line 128
    .local v0, "pp":Lorg/xmlpull/v1/XmlPullParser;
    iget-object v1, p0, Lorg/xmlpull/v1/XmlPullParserFactory;->features:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 131
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 132
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-interface {v0, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->setFeature(Ljava/lang/String;Z)V

    .line 134
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Boolean;>;"
    :cond_0
    goto :goto_0

    .line 136
    :cond_1
    return-object v0
.end method

.method public newSerializer()Lorg/xmlpull/v1/XmlSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 212
    invoke-direct {p0}, Lorg/xmlpull/v1/XmlPullParserFactory;->getSerializerInstance()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v0

    return-object v0
.end method

.method public setFeature(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "state"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 55
    iget-object v0, p0, Lorg/xmlpull/v1/XmlPullParserFactory;->features:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    return-void
.end method

.method public setNamespaceAware(Z)V
    .locals 3
    .param p1, "awareness"    # Z

    .line 81
    iget-object v0, p0, Lorg/xmlpull/v1/XmlPullParserFactory;->features:Ljava/util/HashMap;

    const-string v1, "http://xmlpull.org/v1/doc/features.html#process-namespaces"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    return-void
.end method

.method public setValidating(Z)V
    .locals 3
    .param p1, "validating"    # Z

    .line 105
    iget-object v0, p0, Lorg/xmlpull/v1/XmlPullParserFactory;->features:Ljava/util/HashMap;

    const-string v1, "http://xmlpull.org/v1/doc/features.html#validation"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    return-void
.end method
